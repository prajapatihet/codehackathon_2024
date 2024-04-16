import 'package:donorconnect/src/utils/routes/route_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to our Application',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Start sharing your life-saving moments and\n find nearby donors!',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Image.asset(
                'assets/images/onboarding.png',
                width: width * 0.5,
                height: height * 0.3,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CupertinoButton.filled(
                borderRadius: BorderRadius.circular(30),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, RouterConstant.login);
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
