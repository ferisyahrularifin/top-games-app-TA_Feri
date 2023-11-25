import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_info_app/main.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var durasiSplash = const Duration(seconds: 5);
    return Timer(durasiSplash, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const NavBar();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8cc1b),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splashsc.png",
              width: 450,
              height: 450,
            ),
            const SizedBox(height: 20),
            Text(
              "TOP GAMES",
              style: GoogleFonts.contrailOne(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
