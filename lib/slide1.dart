// // // ignore_for_file: avoid_print


// // import 'package:bcs/state.dart';
// // import 'package:flutter/material.dart';
// // // import 'package:just_audio/just_audio.dart';
// // // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // import 'package:audioplayers/audioplayers.dart';
// // import 'package:flutter_svg/svg.dart';
// // class Slide1 extends ConsumerStatefulWidget {
// //   const Slide1({super.key});

// //   @override
// //   ConsumerState<Slide1> createState() => _Slide1State();
// // }

// // class _Slide1State extends ConsumerState<Slide1> {

// //   int start=0;
// //   int startModule=0;

// //    List<bool> _visibilityList = [false, false, false, false, false];
// //   int pageStep=1;
// //   bool complete=false;
// // late AudioPlayer player = AudioPlayer();

// //  @override
// //   void initState() {
// //   super.initState();
// //   print("length...........");
// //   print(ref.read(mapListProvider)[0]["steps"].length);

// //   ref.read(mapListProvider);
      
       
 
// //    _showInitialTextAndPlayAudio();

  
  
// //  }

// //   @override
// //   void dispose() {
// //     player.dispose();
// //     super.dispose();
// //   }

// //   void _showTextAndPlayAudio(int index)  {

// //     if (index < _visibilityList.length) {
// //       setState(() {
// //         _visibilityList[index] = true;
// //       });

// //       final mapList = ref.read(mapListProvider);
      
// //        player.play(AssetSource(mapList[0]["steps"][0]["Voice"]));

// //       setState(() {
// //         if(complete==true){
// //            pageStep=pageStep+1;
// //         }
       
// //       });
// //     }
// //   }
// //     void _showInitialTextAndPlayAudio() async {
  
// //       Future.delayed(const Duration(seconds: 2), () async {
// //     final mapList = ref.read(mapListProvider);
// //     setState(() {
     
// //       _visibilityList[0] = true;
// //     });
// //     await player.play(AssetSource(mapList[0]["steps"][0]["Voice"])).then((value) => setState(() {
// //       complete=true;
// //     }));});}

// //   Widget _text(String text, bool isVisible,int index) {
// //     return AnimatedOpacity(
// //       opacity: isVisible ? 1.0 : 0.0,
// //       duration: const Duration(seconds: 2),
// //       child: Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             text,
// //             style: const TextStyle(color: Colors.black, fontSize: 24),
// //           ),
// //           ref.read(mapListProvider)[0]["steps"][0]["Asset1"]!=""?
// //           Padding(
// //             padding:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.03 ),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [SvgPicture.asset(ref.read(mapListProvider)[0]["steps"][index]["Asset1"])]),
// //           ):Container()
// //         ],
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final mapList = ref.read(mapListProvider);
// //     double HEIGHT=MediaQuery.of(context).size.height;
// //     double WIDTH=MediaQuery.of(context).size.width ;

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('OnPress Show Text and Audio Demo'),
// //       ),
// //       backgroundColor: const Color(0xffC2B280) ,
// //       body: Center(
// //         child: Container(
// //           width: WIDTH * 0.9,
// //           height:HEIGHT * 0.9,
// //           color:  Colors.white,
// //           child: Padding(
// //             padding: EdgeInsets.symmetric(horizontal:WIDTH * 0.05),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// //               children: [
// //                 _text(mapList[startModule]["steps"][start]["Text"], _visibilityList[0],mapList[startModule]["steps"][start]["id"]),
                                 
// //                 for (int i = start+1;mapList[startModule]["steps"].length-start<=4? i < (mapList[startModule]["steps"].length):i<start+5; i++)
// //                   _text(mapList[startModule]["steps"][i]["Text"], _visibilityList[i%5],mapList[startModule]["steps"][i]["id"]),
// //                 const SizedBox(height: 20),
// //                 pageStep!=5 && mapList[startModule]["steps"].length-1!=mapList[startModule]["steps"][start+pageStep-1]["id"]?
// //                 ElevatedButton(
// //                   onPressed: pageStep < 5
// //                       ? () => {_showTextAndPlayAudio(pageStep),print(pageStep)}
// //                       : null,
// //                   child: const Text('Show Next Step'),
// //                 ): mapList[startModule]["steps"].length-1==mapList[startModule]["steps"][start+pageStep-1]["id"]?  ElevatedButton(
// //                   onPressed: (){
// //                     setState(() {
// //    _visibilityList=[false,false,false,false,false];
// //  print("startModule, $startModule"); 
// //                      Future.delayed(const Duration(seconds: 2), () async {
// //                       start=0;
// //                       pageStep=1;
// //                       complete=false;
// //                       startModule=startModule+1;
                     
// //                       print(start);
// //                       print(_visibilityList);  
// //                       print("startModule, $startModule");  
// //                          });
// //                     });
// //                     _showInitialTextAndPlayAudio();
                   
// //                   },
// //                   child: const Text('Show Next Module'),
// //                 ): ElevatedButton(
// //                   onPressed: (){
// //                     setState(() {
// //                        _visibilityList=[false,false,false,false,false];
// //                          Future.delayed(const Duration(seconds: 2), () async {
// //                       start=start+5;
// //                       pageStep=1;
// //                       complete=false;
                     
// //                       print(start);
// //                       print(_visibilityList);  
// //                          });
                      
// //                     });
            
// //                     _showInitialTextAndPlayAudio();
// //                   },
// //                   child: const Text('Show Next Slide'),
// //                 )
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
      
// //     );
// //   }
// // }



// // ignore_for_file: avoid_print, non_constant_identifier_names


// import 'package:bcs/state.dart';
// import 'package:flutter/material.dart';
// // import 'package:just_audio/just_audio.dart';
// // import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter_svg/svg.dart';
// class Slide1 extends ConsumerStatefulWidget {
//   const Slide1({super.key});

//   @override
//   ConsumerState<Slide1> createState() => _Slide1State();
// }

// class _Slide1State extends ConsumerState<Slide1> {
// late AudioPlayer player = AudioPlayer();
          
//           int currentIndex = 0;
//   List<bool> _visibilityList = List.filled(5, false);                                                                                                                                                                                                                                                                                                                                                                                                                                         
//   int start = 0; 
//   final int startModule = 0; 

//   @override
//   void initState() {
//     super.initState();
//     _showNextText();
//   }

// void _showNextText() async {
//   while (true) {
//     for (int i = start; 
//          (ref.read(mapListProvider)[startModule]["steps"].length - start <= 4 ? 
//          i <= ref.read(mapListProvider)[startModule]["steps"].length : 
//          i < start + 5); i++) {
      
//       await Future.delayed(const Duration(seconds: 2));

//       if (currentIndex == 5) {
//         print("if part...............................");
//         setState(() {
//           _visibilityList = [false, false, false, false, false];
//         });

//         await Future.delayed(const Duration(seconds: 2));
//         setState(() {
//           start += 5;
//           currentIndex = 0;
//           print("Start $start");
//           print("currentIndex $currentIndex");
//         });

//         break; 
//       } 
      
//       else if(i==ref.read(mapListProvider)[startModule]["steps"].length ){

//       }
//       else {
//         print("else part...............................");
//         setState(() {
//           _visibilityList[currentIndex] = true;
//           print(_visibilityList);
//         });

//         await player.play(AssetSource(ref.read(mapListProvider)[startModule]["steps"][i]["Voice"]));
//         await Future.delayed(const Duration(seconds: 3));

//         print("Next................");
//         setState(() {
//           currentIndex++;
//           print(currentIndex);
//         });
//       }
//     }

//     // Check if the loop should terminate
//     if (start >= ref.read(mapListProvider)[startModule]["steps"].length) {
//       print("Completed all steps.");
//       break; 
//     }
//   }
// }



//   Widget _text(String text, bool isVisible, int index) {
//     return AnimatedOpacity(
//       opacity: isVisible ? 1.0 : 0.0,
//       duration: const Duration(seconds: 2),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             text,
//             style: const TextStyle(color: Colors.black, fontSize: 24),
//           ),
//           if ((ref.read(mapListProvider)[startModule]["steps"][index]["Asset1"] ?? '').isNotEmpty)
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SvgPicture.asset(ref.read(mapListProvider)[startModule]["steps"][index]["Asset1"] ?? '')
//                 ],
//               ),
//             ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final mapList = ref.read(mapListProvider);
//     double WIDTH=MediaQuery.of(context).size.width ;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('OnPress Show Text and Audio Demo'),
//       ),
//       backgroundColor: const Color(0xffC2B280) ,
//       body:  Center(
//         child: Container(
//         color: Colors.white,
//           width: WIDTH*0.9,
//           // height: HEIGHT*0.9,
          
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//              for (int i = start;mapList[startModule]["steps"].length-start<=4? i < (mapList[startModule]["steps"].length):i<start+5; i++)
//                       _text(mapList[startModule]["steps"][i]["Text"], _visibilityList[i%5],mapList[startModule]["steps"][i]["id"]),
//                     const SizedBox(height: 20),
                   
//           ],),
//         ),
//       ),floatingActionButton: FloatingActionButton(onPressed: (){

//       },child: const Icon(Icons.pause),),
//     );
      
 
//   }
// }
 