import 'package:bcs/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_animations/animation_builder/custom_animation_builder.dart';
import 'package:simple_animations/movie_tween/movie_tween.dart';

class Knob extends ConsumerStatefulWidget {
  const Knob({super.key});

  @override
  ConsumerState<Knob> createState() => _KnobState();
}

class _KnobState extends ConsumerState<Knob>
    with SingleTickerProviderStateMixin {
  double knobValue1 = 0;
  double knobValue2 = 0;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    control = Control.playFromStart;
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _updateTween();
  }

  late MovieTween tween;
  late Control control;

  void _updateTween() {
    // final value1 = ref.watch(knob1value);
    // final value2 = ref.watch(knob2value);

    tween = MovieTween()
      ..scene(
              begin: const Duration(seconds: 0),
              end: const Duration(seconds: 3))
          .tween('knob', Tween<double>(begin: knobValue1, end: knobValue2));
    print(knobValue1);
    print(knobValue2);
  }

  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGHT = MediaQuery.of(context).size.height;

    return CustomAnimationBuilder<Movie>(
        control: control,
        tween: tween,
        duration: const Duration(seconds: 3),
        builder: (context, value, animation) {
          return Container(
            // height: HEIGHT*0.05,
            width: WIDTH * 0.14,
            // color: Colors.red,
            child: Stack(
              children: [
                SvgPicture.asset(
                    height: HEIGHT * 0.05,
                    "assets/images/b1protect.svg"), // 301
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: HEIGHT * 0.007, left: WIDTH * 0.005),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              knobValue1 = knobValue2;
                              knobValue2 = 0;
                              _updateTween();
                            });

                            print("knobValue1 $knobValue1");
                            print("knobValue2 $knobValue2");
                          },
                          child: const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "JOIN\n RC\n SPR AV",
                              style: TextStyle(
                                  fontSize: 4, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: HEIGHT * 0.009),
                      child: Container(
                        // margin:
                        //     const EdgeInsets
                        //         .only(
                        //         right: 8),
                        // color: Colors.amber,
                        child: Column(
                          // mainAxisAlignment:
                          //     MainAxisAlignment
                          //         .spaceAround,
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    knobValue1 = knobValue2;
                                    knobValue2 = 90;
                                    _updateTween();
                                  });

                                  // });

                                  print("knobValue1 $knobValue1");
                                  print("knobValue2 $knobValue2");
                                },
                                child: const FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "ON",
                                      style: TextStyle(
                                          fontSize: 4,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ), // 285
                            SvgPicture.string(
                              '''<svg id="ps-2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 82.13 70.58" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" project-id="8b49e7f410f7489aa8b46fdbd8db7bc7" export-id="e06bc66bee1141e8b285b649be9c2e04" cached="true">
<style><![CDATA[

]]></style>
<defs><linearGradient id="ps-2-u-nob_b1-fill" x1="183" y1="302" x2="183" y2="294" spreadMethod="pad" gradientUnits="userSpaceOnUse" gradientTransform="translate(0 0)"><stop id="ps-2-u-nob_b1-fill-0" offset="0.986796%" stop-color="#eff0f0"/><stop id="ps-2-u-nob_b1-fill-1" offset="53.5%" stop-color="#c0c1c1"/><stop id="ps-2-u-nob_b1-fill-2" offset="100%" stop-color="#eff0f0"/></linearGradient></defs><g id="ps-2-u-copy-of-group" transform="translate(-33.506572-15.436739)"><path id="ps-2-u-copy-of-path-2" d="M149.999,299c0-3.78.867-7.739,2.55-11.231c1.684-3.493,4.151-6.666,7.262-9.338c3.111-2.673,6.804-4.793,10.868-6.24c4.065-1.446,8.421-2.191,12.82-2.191s8.756.745,12.82,2.191c4.064,1.447,7.757,3.567,10.868,6.24c3.111,2.672,5.578,5.845,7.262,9.338c1.684,3.492,2.55,7.451,2.55,11.231" transform="translate(-109.05-245.781895)" fill="none" stroke="#3f3f3f" stroke-width="2"/><rect id="ps-2-u-copy-of-rectangle-2" width="8" height="1" rx="0" ry="0" transform="matrix(0 1-1 0 74.949999 16.218103)" fill="#3f3f3f" stroke="#3f3f3f"/><rect id="ps-2-u-copy-of-rectangle-22" width="7.78796" height="0.778796" rx="0" ry="0" transform="matrix(1.001279 0.006501-.006493 0.999979 107.442077 52.686033)" fill="#3f3f3f" stroke="#3f3f3f"/><rect id="ps-2-u-copy-of-rectangle-23" width="7.788246" height="0.778796" rx="0" ry="0" transform="matrix(1.000127 0.006494-.006493 0.999979 33.898928 52.736805)" fill="#3f3f3f" stroke="#3f3f3f"/></g><g id="ps-2-u-nob_b1_tr" transform="translate(40.942428,37.249096) rotate(${value.get('knob')})"><path id="ps-2-u-nob_b1" d="M201,298.08c0,1.506-1.106,2.79-2.6,2.989-10.398,1.389-16.85,1.189-28.257-.367l-2.572-.674L165,298.073l2.571-1.988l2.572-.641c11.356-1.913,17.489-1.812,28.243-.364c1.499.202,2.614,1.487,2.614,3Z" transform="translate(-183,-297.999893)" fill="url(#ps-2-u-nob_b1-fill)"/></g></svg>

 ''',
                              width: WIDTH * 0.075,
                              // fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              knobValue1 = knobValue2;
                              knobValue2 = 180;
                              _updateTween();
                            });

                            print("knobValue1 $knobValue1");
                            print("knobValue2 $knobValue2");
                          },
                          child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: HEIGHT * 0.0165, left: WIDTH * 0.004),
                                child: const Text(
                                  "OFF",
                                  style: TextStyle(
                                      fontSize: 4, fontWeight: FontWeight.bold),
                                ),
                              ))
                          //  SvgPicture.asset(
                          //     "assets/images/OFF.svg"),
                          ),
                    ), // 269
                  ],
                ),
              ],
            ),
          );
        });
  }
}
