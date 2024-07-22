import 'package:bcs/home.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:window_manager/window_manager.dart';

void main() async {
  runApp(const ProviderScope(child: MyApp()));
  // windowManager.waitUntilReadyToShow().then((_) async{
  //     await windowManager.setAsFrameless();
  // });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/vikaramaditya.png'),
      backgroundColor: Colors.black,
      nextScreen: const SplashScreen1(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/iinvsyslogo.jpg',
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/images/chozhaWin.jpg',
            fit: BoxFit.contain,
          ),
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: const SplashScreen2(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Text(
          "Boiler Control System",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      nextScreen: const Home(),
      // nextScreen: const Slide2(),
      // nextScreen: const Slide1(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
