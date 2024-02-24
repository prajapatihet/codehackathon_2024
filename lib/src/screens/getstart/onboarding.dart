import 'package:codehackathon_2024/src/screens/login/login_screen.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.01,
                width: width,
              ),
              Text(
                'Welcome to LifeShare',
                style: GoogleFonts.montserrat(
                  fontSize: 26,
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
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Image.asset(
                'assets/images/onboarding.png',
                width: width * 0.7,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  fixedSize: Size(width * 0.6, height * 0.07),
                  textStyle: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shadowColor: Colors.blue,
                  shape: StadiumBorder(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
