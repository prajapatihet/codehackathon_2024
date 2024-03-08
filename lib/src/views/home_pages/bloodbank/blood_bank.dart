import 'package:connectblooddonor/src/consts/blood_bank_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodBankScreen extends StatefulWidget {
  const BloodBankScreen({super.key});

  @override
  State<BloodBankScreen> createState() => _BloodBankScreenState();
}

class _BloodBankScreenState extends State<BloodBankScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find Nearby Blood-Banks',
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
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                BloodBankCard(
                  name: 'Kailash Cancer Hospital & Research Centre Blood Bank.',
                  location: 'Vadodara, Gujarat',
                  time: '9 AM to 5 PM',
                  lat: '22.334629',
                  long: '73.464162',
                ),
                BloodBankCard(
                  name: 'Kailash Cancer Hospital & Research Centre Blood Bank.',
                  location: 'Vadodara, Gujarat',
                  time: '9 AM to 5 PM',
                  lat: '22.334629',
                  long: '73.464162',
                ),
                BloodBankCard(
                  name: 'Kailash Cancer Hospital & Research Centre Blood Bank.',
                  location: 'Vadodara, Gujarat',
                  time: '9 AM to 5 PM',
                  lat: '22.334629',
                  long: '73.464162',
                ),
                BloodBankCard(
                  name: 'Kailash Cancer Hospital & Research Centre Blood Bank.',
                  location: 'Vadodara, Gujarat',
                  time: '9 AM to 5 PM',
                  lat: '22.334629',
                  long: '73.464162',
                ),
                BloodBankCard(
                  name: 'Kailash Cancer Hospital & Research Centre Blood Bank.',
                  location: 'Vadodara, Gujarat',
                  time: '9 AM to 5 PM',
                  lat: '22.334629',
                  long: '73.464162',
                ),
                BloodBankCard(
                  name: 'Kailash Cancer Hospital & Research Centre Blood Bank.',
                  location: 'Vadodara, Gujarat',
                  time: '9 AM to 5 PM',
                  lat: '22.334629',
                  long: '73.464162',
                ),
                BloodBankCard(
                  name: 'Kailash Cancer Hospital & Research Centre Blood Bank.',
                  location: 'Vadodara, Gujarat',
                  time: '9 AM to 5 PM',
                  lat: '22.334629',
                  long: '73.464162',
                ),
                BloodBankCard(
                  name: 'Kailash Cancer Hospital & Research Centre Blood Bank.',
                  location: 'Vadodara, Gujarat',
                  time: '9 AM to 5 PM',
                  lat: '22.334629',
                  long: '73.464162',
                ),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
