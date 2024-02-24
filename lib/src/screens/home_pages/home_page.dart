import 'package:codehackathon_2024/src/consts/home_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'How can we help you?',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        toolbarHeight: 65,
        toolbarOpacity: 0.8,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeCard(
                title: "Locate a Blood Drive",
                description: "Find a blood drive near you.",
                button: "Get Started",
                image: 'assets/images/home_image1.png',
              ),
              HomeCard(
                title: "Locate Nearby Bloodbanks",
                description: "Find Nearby BloodBank.",
                button: "Get Started",
                image: 'assets/images/home_image1.png',
              ),
              HomeCard(
                title: "Learn About Donating",
                description: "Learn more about blood & \nplatelet donation.",
                button: "Get Started",
                image: 'assets/images/home_image2.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
