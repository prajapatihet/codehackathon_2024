import 'package:connectblooddonor/src/consts/profile_option.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var rating = '5846';
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.montserrat(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        toolbarHeight: 65,
        toolbarOpacity: 0.8,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      'assets/images/user1.png',
                      width: width * 0.3,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Hetkumar Prajapati',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Your rating $rating!!!')));
                  },
                  icon: const Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 19,
                  ),
                  label: Text(
                    rating,
                    style: GoogleFonts.montserrat(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Options(
                  option: 'More Information',
                  icon: const Icon(Icons.person),
                  onPressed: () {},
                ),
                Options(
                  option: 'Edit Profile',
                  icon: const Icon(Icons.edit_sharp),
                  onPressed: () {},
                ),
                Options(
                  option: 'Login and security',
                  icon: const Icon(Icons.security_rounded),
                  onPressed: () {},
                ),
                Options(
                  option: 'Data and Privacy',
                  icon: const Icon(Icons.privacy_tip),
                  onPressed: () {},
                ),
                Options(
                  option: 'Give Feedback',
                  icon: const Icon(Icons.feedback_sharp),
                  onPressed: () {},
                ),
                SizedBox(height: height * 0.05),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Sign-Out',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
