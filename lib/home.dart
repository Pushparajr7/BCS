// ignore_for_file: non_constant_identifier_names

import 'package:bcs/slide2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

bool prechecks=false;

  @override
  Widget build(BuildContext context) {
   double HEIGHT = MediaQuery.of(context).size.height;
    double WIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: HEIGHT,
        width: WIDTH,
        child:
        
        prechecks==false? Padding(
          padding:  EdgeInsets.symmetric(vertical: HEIGHT*0.25),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              
              width: WIDTH*0.4,
              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(onPressed: (){
                setState(() {
                  prechecks=true;
                });
              }, child: Text("Pre-checks of the boiler",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(color: Colors.black,fontSize:30)),)
            ),

             Container(      
                      decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.all(Radius.circular(10)),),
          width: WIDTH*0.4,
                    // height: HEIGHT*0.018,
                    child: Center(child: Text("Operations of the Boiler",style: GoogleFonts.poppins(color: Colors.grey,fontSize:30))),
          // child: TextButton(onPressed: (){}, child: Text("Boiler Training mode"))
          ),

            // Container(              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
          
            //   width: WIDTH*0.2,child: TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const StartStop()));}, child:  Text("Operations of the Boiler",style: GoogleFonts.poppins(color: Colors.black,)))),

            Container(      
                      decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.all(Radius.circular(10)),),
          width: WIDTH*0.4,
                    // height: HEIGHT*0.018,
                    child: Center(child: Text("Boiler Training",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.grey,fontSize:30))),
          // child: TextButton(onPressed: (){}, child: Text("Boiler Training mode"))
          ),
            Container(            decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.all(Radius.circular(10))),
          width: WIDTH*0.4,
          // height: HEIGHT*0.018,
          child: Center(child: Text("Assited Training",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.grey,fontSize:30))),
          // child: TextButton(onPressed: (){}, child: Text("Assisted Training mode"))
          ),
            Container(             decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.all(Radius.circular(10))),
          width: WIDTH*0.4,
                    // height: HEIGHT*0.018,
                    child: Center(child: Text("Real-time Training",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.grey,fontSize:30))),
          // child: TextButton(onPressed: (){}, child: Text("Real-time Training mode"))
          ),
          ],
              ),
        ):Padding(
          padding:  EdgeInsets.symmetric(vertical: HEIGHT*0.25),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              
              width: WIDTH*0.4,
              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Slide2()));
              }, child: Text("Boiler Cold Flashup",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize:30)),)
            ),

              Container(
              
              width: WIDTH*0.4,
              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>const StartStop()));
              }, child: Text("Boiler Hot Flashup",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize:30)),)
            ),

             Container(
              
              width: WIDTH*0.4,
              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>const StartStop()));
              }, child: Text("Stop Procedure",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize:30)),)
            ),
             Container(
              
              width: WIDTH*0.4,
              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>const StartStop()));
              }, child: Text("Boiler Prechecks",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize:30)),)
            ),
          ],
              ),
        )
      ),);
  }
}