import 'package:codehackathon_2024/src/consts/camp_info_card.dart';
import 'package:codehackathon_2024/src/consts/event_info_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Events & Camps',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Add Events')));
            },
          )
        ],
        toolbarHeight: 65,
        toolbarOpacity: 0.8,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Upcoming Events',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                EventInfoCard(
                  title: 'Blood Donation Drive',
                  date: 'March 1, 2024',
                  time: '9:00 AM - 3:00 PM',
                  location: 'City Hospital',
                ),
                EventInfoCard(
                  title: 'Blood Donation Drive',
                  date: 'March 8, 2024',
                  time: '9:00 AM - 12:00 PM',
                  location: 'Government Hospital',
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Medical Camps',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                CampInfoCard(
                  title: 'Mobile Blood Donation Camp',
                  date: 'February 28, 2024',
                  time: '10:00 AM - 6:00 PM',
                  venue: 'Community Center',
                  description:
                      'Join us for a mobile blood donation camp to save lives!',
                ),
                CampInfoCard(
                  title: 'Medical Check-up Camp',
                  date: 'March 13, 2024',
                  time: '10:00 AM - 1:00 PM',
                  venue: 'Community Center',
                  description:
                      'Join us for a mobile blood donation camp to save lives!',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
