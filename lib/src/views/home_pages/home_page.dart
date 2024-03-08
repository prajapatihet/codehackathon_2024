import 'package:connectblooddonor/src/consts/home_card.dart';
import 'package:connectblooddonor/src/consts/widgets/home_card_form.dart';
import 'package:connectblooddonor/src/utils/routes/route_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeCardConst(
                    title: 'Want to Donate',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Want to Donate')));
                    },
                  ),
                  HomeCardConst(
                    title: 'Urgent required',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Make an Request')));
                    },
                  ),
                  // ElevatedButton.icon(
                  //   onPressed: () {},
                  //   icon: const Icon(Icons.health_and_safety),
                  //   label: const Text('Want to Donote'),
                  // ),
                  // ElevatedButton.icon(
                  //   onPressed: () {},
                  //   icon: const Icon(Icons.note_add_rounded),
                  //   label: const Text('Urgent Required'),
                  // ),
                ],
              ),
              HomeCard(
                title: "Locate Nearby Bloodbanks",
                description: "Find Nearby BloodBank.",
                button: "Get Started",
                image: 'assets/images/home_image1.png',
                onPressed: () {
                  Navigator.pushNamed(context, RouterConstant.bloodbanks);
                },
              ),
              HomeCard(
                title: "Learn About Donating",
                description: "Learn more about blood & \nplatelet donation.",
                button: "Get Started",
                image: 'assets/images/home_image2.png',
                onPressed: () {
                  Navigator.pushNamed(context, RouterConstant.aboutdonate);
                },
              ),
              SizedBox(height: height * 0.1)
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     ScaffoldMessenger.of(context)
      //         .showSnackBar(const SnackBar(content: Text('Make an Request')));
      //   },
      //   icon: const Icon(Icons.add),
      //   label: Text(
      //     'Request',
      //     style: GoogleFonts.montserrat(
      //         fontSize: 13.0, fontWeight: FontWeight.w600),
      //   ),
      // ),
    );
  }
}
