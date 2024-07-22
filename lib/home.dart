// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:bcs/slide2.dart';
import 'package:bcs/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  late bool prechecks;
  late bool bprechecks;
  late bool systemchecks;
  late bool shutdown;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() {
    prechecks = ref.read(prechecksProcedure);
    bprechecks = ref.read(bprechecksProcedure);
    systemchecks = ref.read(systemchecksProcedure);
    shutdown = ref.read(shutdownProcedure);
  }

  @override
  Widget build(BuildContext context) {
    double HEIGHT = MediaQuery.of(context).size.height;
    double WIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: HEIGHT * 0.07,
          leading: prechecks == false
              ? Container(
                  margin: EdgeInsets.only(left: WIDTH * 0.035),
                  // height: HEIGHT*0.3,
                  // width: WIDTH*0.15,
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          print("clicked");
                          print("prechecks $prechecks");
                          print("bprechecks $bprechecks");
                          print("systemchecks $systemchecks");
                          print("shutdown $shutdown");
                          setState(() {
                            if (systemchecks == true) {
                              systemchecks = false;
                              bprechecks = true;
                            } else if (bprechecks == true) {
                              bprechecks = false;
                              prechecks = false;
                            } else if (shutdown == true) {
                              shutdown = false;
                              prechecks = false;
                            } else if (prechecks == false &&
                                shutdown == false &&
                                bprechecks == false &&
                                systemchecks == false) {
                              print("last...");
                              prechecks = true;
                            }
                          });
                          print("prechecks $prechecks");
                          print("bprechecks $bprechecks");
                          print("systemchecks $systemchecks");
                          print("shutdown $shutdown");
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: HEIGHT * 0.02,
                        )),
                  ),
                )
              : Container()),
      body: SizedBox(
          height: HEIGHT,
          width: WIDTH,
          child: prechecks == true
              ? Padding(
                  padding: EdgeInsets.symmetric(vertical: HEIGHT * 0.25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: WIDTH * 0.4,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                prechecks = false;
                              });
                            },
                            child: Text("Pre-checks of the boiler",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 30)),
                          )),

                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        width: WIDTH * 0.4,
                        // height: HEIGHT*0.018,
                        child: Center(
                            child: Text("Operations of the Boiler",
                                style: GoogleFonts.poppins(
                                    color: Colors.grey, fontSize: 30))),
                        // child: TextButton(onPressed: (){}, child: Text("Boiler Training mode"))
                      ),

                      // Container(              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),

                      //   width: WIDTH*0.2,child: TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const StartStop()));}, child:  Text("Operations of the Boiler",style: GoogleFonts.poppins(color: Colors.black,)))),

                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        width: WIDTH * 0.4,
                        // height: HEIGHT*0.018,
                        child: Center(
                            child: Text("Boiler Training",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: Colors.grey, fontSize: 30))),
                        // child: TextButton(onPressed: (){}, child: Text("Boiler Training mode"))
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: WIDTH * 0.4,
                        // height: HEIGHT*0.018,
                        child: Center(
                            child: Text("Assited Training",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: Colors.grey, fontSize: 30))),
                        // child: TextButton(onPressed: (){}, child: Text("Assisted Training mode"))
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: WIDTH * 0.4,
                        // height: HEIGHT*0.018,
                        child: Center(
                            child: Text("Real-time Training",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: Colors.grey, fontSize: 30))),
                        // child: TextButton(onPressed: (){}, child: Text("Real-time Training mode"))
                      ),
                    ],
                  ),
                )
              : systemchecks == true
                  ? Padding(
                      padding: EdgeInsets.symmetric(vertical: HEIGHT * 0.3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: WIDTH * 0.4,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: TextButton(
                                onPressed: () {
                                  ref.read(startProvider.notifier).state = 5;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Slide2()));
                                },
                                child: Text("Feed Water",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        color: Colors.black, fontSize: 30)),
                              )),
                          Container(
                              width: WIDTH * 0.4,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: TextButton(
                                onPressed: () {
                                  // setState(() {
                                  //   bprechecks = false;
                                  //   prechecks = false;
                                  //   systemchecks = true;
                                  // });
                                  ref.read(startProvider.notifier).state = 3;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Slide2()));
                                },
                                child: Text("Air System",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        color: Colors.black, fontSize: 30)),
                              )),
                          Container(
                              width: WIDTH * 0.4,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: TextButton(
                                onPressed: () {
                                  ref.read(startProvider.notifier).state = 4;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Slide2()));
                                },
                                child: Text("Fuel System",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        color: Colors.black, fontSize: 30)),
                              )),
                        ],
                      ),
                    )
                  : bprechecks == true
                      ? Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: HEIGHT * 0.37),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: WIDTH * 0.4,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: TextButton(
                                    onPressed: () {
                                      ref.read(startProvider.notifier).state =
                                          0;
                                      ref
                                          .read(prechecksProvider.notifier)
                                          .state = 0;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Slide2()));
                                    },
                                    child: Text("General Prechecks",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 30)),
                                  )),
                              Container(
                                  width: WIDTH * 0.4,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        bprechecks = false;
                                        prechecks = false;
                                        systemchecks = true;
                                      });
                                    },
                                    child: Text("System vise Prechecks",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 30)),
                                  )),
                            ],
                          ),
                        )
                      : shutdown
                          ? Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: HEIGHT * 0.25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            // bprechecks = true;
                                            prechecks = false;
                                          });
                                          ref
                                              .read(startProvider.notifier)
                                              .state = 0;
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 1;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Slide2()));
                                        },
                                        child: Text("Duties of Watch Keeper",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            // bprechecks = true;
                                            prechecks = false;
                                          });
                                          ref
                                              .read(startProvider.notifier)
                                              .state = 1;
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 1;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Slide2()));
                                        },
                                        child: Text("POME",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          ref
                                              .read(startProvider.notifier)
                                              .state = 2;
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 1;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Slide2()));
                                        },
                                        child: Text("ERA",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          ref
                                              .read(startProvider.notifier)
                                              .state = 3;
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 1;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Slide2()));
                                        },
                                        child: Text("Assited Boiler Room",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          ref
                                              .read(startProvider.notifier)
                                              .state = 4;
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 1;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Slide2()));
                                        },
                                        child: Text("TBU watch keeper",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          ref
                                              .read(startProvider.notifier)
                                              .state = 5;
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 1;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Slide2()));
                                        },
                                        child: Text("Water tender",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                ],
                              ),
                            )
                          : Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: HEIGHT * 0.25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            bprechecks = true;
                                            prechecks = false;
                                          });
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 0;
                                        },
                                        child: Text("Boiler Prechecks",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 2;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Slide2()));
                                        },
                                        child: Text("Boiler Cold Flashup",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 2;
                                          ref
                                              .read(startProvider.notifier)
                                              .state = 2;
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Slide2()));
                                        },
                                        child: Text("Boiler Hot Flashup",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                  Container(
                                      width: WIDTH * 0.4,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextButton(
                                        onPressed: () {
                                          ref
                                              .read(prechecksProvider.notifier)
                                              .state = 1;
                                          setState(() {
                                            shutdown = true;
                                          });
                                        },
                                        child: Text("Stop Procedure",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      )),
                                ],
                              ),
                            )),
    );
  }
}
