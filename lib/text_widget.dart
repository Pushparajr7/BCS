import 'package:audioplayers/audioplayers.dart';
import 'package:bcs/home.dart';
import 'package:bcs/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Text_Widget extends ConsumerStatefulWidget {
  const Text_Widget({super.key});

  @override
  ConsumerState<Text_Widget> createState() => _Text_WidgetState();
}

class _Text_WidgetState extends ConsumerState<Text_Widget> {
  late AudioPlayer player = AudioPlayer();

  int currentIndex = 0;
  List<bool> _visibilityList = List.filled(5, false);
  bool titleVisibility = false;
  String button1 = 's1';

  int start = 0;
  bool isPaused = false;
  PlayerState? _playerState;
  bool stopFunction = false;
  late int startModule = 0;

  void initialize() {
    startModule = ref.read(startProvider);
    prechecks = ref.read(prechecksProvider);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        _showNextText();
      },
    );
  }

  Future<void> _waitForFlagToChange() async {
    while (isPaused) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  int prechecks = 0;
  int moduleLength = 0;
  int moduleId = 0;
  int stepId = 0;

  Widget _text(String text, bool isVisible, int index) {
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGHT = MediaQuery.of(context).size.height;

    return AnimatedOpacity(
      opacity: isVisible ? 1.0 : 0.0,
      duration: const Duration(seconds: 2),
      child: SizedBox(
        width: WIDTH * 0.5,
        // color: Colors.amber,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: WIDTH * 0.05),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: WIDTH * 0.01),
                child: const Icon(Icons.check, color: Colors.green),
              ),
              Flexible(
                child: Text(
                  text,
                  style:
                      TextStyle(color: Colors.black, fontSize: HEIGHT * 0.0065),
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showNextText() async {
    while (!stopFunction) {
      for (int i = start;
          (ref
                          .read(mapListProvider)[prechecks]["steps"]
                              [startModule]["steps"]
                          .length -
                      start <=
                  4
              ? i <=
                  ref
                      .read(mapListProvider)[prechecks]["steps"][startModule]
                          ["steps"]
                      .length
              : i < start + 5);
          i++) {
        stepId = stepId + 1;
        print("stepId.........................$stepId");
        if (stopFunction) {
          break; // Exit the loop if stopFunction is true
        }

        if (isPaused) {
          await _waitForFlagToChange();
        }

        await Future.delayed(const Duration(seconds: 2), () async {
          if (isPaused) {
            await _waitForFlagToChange();
          }
        });

        if (currentIndex == 5) {
          if (isPaused) {
            await _waitForFlagToChange();
          }
          print("if part...............................");

          setState(() {
            _visibilityList = [false, false, false, false, false];
          });

          await Future.delayed(const Duration(seconds: 2), () async {
            if (isPaused) {
              await _waitForFlagToChange();
            }
          });

          if (isPaused) {
            await _waitForFlagToChange();
          }
          setState(() {
            start += 5;
            currentIndex = 0;
            print("Start $start");
            print("currentIndex $currentIndex");
          });

          break;
        } else if (i ==
            ref
                .read(mapListProvider)[prechecks]["steps"][startModule]["steps"]
                .length) {
          if (isPaused) {
            await _waitForFlagToChange();
          }

          print("last part..........................");
          setState(() {
            titleVisibility = false;
            _visibilityList = [false, false, false, false, false];
            print("titleVisibility $titleVisibility");
          });

          await Future.delayed(
            const Duration(seconds: 2),
            () async {
              if (isPaused) {
                await _waitForFlagToChange();
              }
            },
          );
          if (isPaused) {
            await _waitForFlagToChange();
          }
          // if (titleVisibility == false) {
          //   await _waitForTitle(titleVisibility);
          // }

          if (ref.read(mapListProvider)[prechecks]["steps"][startModule]
                  ["id"] !=
              ref.read(mapListProvider)[prechecks]["steps"].length) {
            print('''ref.read(mapListProvider)[prechecks]["steps"][startModule]
                  ["id"] ${ref.read(mapListProvider)[prechecks]["steps"][startModule]["id"]}''');

            setState(() {
              moduleLength++;
              start = 0;
              currentIndex = 0;
              startModule++;
              titleVisibility = true;
              print("start $start");
              print("currentIndex $currentIndex");
            });
          } else {
            print("Break part.........");

            print('''ref.read(mapListProvider)[prechecks]["steps"][startModule]
                  ["id"] ${ref.read(mapListProvider)[prechecks]["steps"][startModule]["id"]}''');
            stopFunction = true;
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home()));

            break;
          }
        } else {
          print("i..................................$i");
          if (i == 0) {
            if (isPaused) {
              await _waitForFlagToChange();
            }
            print("first part.....................");
            setState(() {
              titleVisibility = true;
              print(titleVisibility);
            });

            if (isPaused) {
              await _waitForFlagToChange();
            }
            await Future.delayed(const Duration(seconds: 1), () async {
              if (isPaused) {
                await _waitForFlagToChange();
              }
            });
          }

          if (isPaused) {
            await _waitForFlagToChange();
          }

          print("else part...............................");

          if (isPaused) {
            await _waitForFlagToChange();
          }
          setState(() {
            _visibilityList[currentIndex] = true;
            print(_visibilityList);
          });

          if (isPaused) {
            await _waitForFlagToChange();
          }

          ref
              .read(mapListProvider.notifier)
              .updateStepState(prechecks, startModule, i, true);
          print(
              "$startModule....$i.....${ref.read(mapListProvider)[prechecks]["steps"][startModule]["steps"][i]["state"]}");

          await player.play(AssetSource(ref.read(mapListProvider)[prechecks]
              ["steps"][startModule]["steps"][i]["Voice"]));
          _playerState = player.state;

          while (_playerState == PlayerState.playing) {
            await Future.delayed(const Duration(milliseconds: 100));
            _playerState = player.state;
          }

          await Future.delayed(const Duration(seconds: 1), () async {
            if (isPaused) {
              await _waitForFlagToChange();
            }
          });
          if (isPaused) {
            await _waitForFlagToChange();
          }

          await Future.delayed(const Duration(seconds: 3), () async {
            if (isPaused) {
              await _waitForFlagToChange();
            }
          }).then((value) async {
            if (_playerState == PlayerState.paused) {
              print("Paused State........................");
              print("Will skip to next iteration..............");
              setState(() {
                currentIndex++;
                print(currentIndex);
              });
            } else {
              print("Next................");
              setState(() {
                currentIndex++;
                print(currentIndex);
              });
            }
          });
          if (isPaused) {
            await _waitForFlagToChange();
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGHT = MediaQuery.of(context).size.height;
    final mapList = ref.read(mapListProvider);

    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(top: HEIGHT * 0.015),
          child: AnimatedOpacity(
              opacity: titleVisibility ? 1.0 : 0.0,
              duration: const Duration(seconds: 2),
              child: Text(
                "${mapList[prechecks]["steps"][startModule]["Title"]}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: HEIGHT * 0.01, fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(
            height: HEIGHT * 0.25,
            // color:Colors.red,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = start;
                      // prechecks == 2 &&
                      //             startModule ==
                      //                 0 &&
                      //             stepId ==
                      //                 1 ||
                      //         stepId == 2
                      //     ? i < start + 2
                      mapList[prechecks]["steps"][startModule]["steps"].length -
                                  start <=
                              4
                          ? i <
                              (mapList[prechecks]["steps"][startModule]["steps"]
                                  .length)
                          : i < start + 5;
                      i++)
                    _text(
                        mapList[prechecks]["steps"][startModule]["steps"][i]
                            ["Text"],
                        _visibilityList[i % 5],
                        mapList[prechecks]["steps"][startModule]["steps"][i]
                            ["id"]),
                ])),
      ],
    );
  }
}
