import 'package:connectblooddonor/src/consts/camp_info_card.dart';
import 'package:connectblooddonor/src/consts/event_info_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  TextEditingController datePicker = TextEditingController();
  TextEditingController timePicker = TextEditingController();
  @override
  void dispose() {
    datePicker.dispose();
    timePicker.dispose();
    super.dispose();
  }

  @override
  void initState() {
    datePicker.text = '';
    timePicker.text = '';
    super.initState();
  }

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
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add,
              size: 28,
              color: Colors.black,
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                isScrollControlled: true,
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                builder: (BuildContext context) {
                  return SizedBox(
                    height: height * (4 / 5),
                    child: addEvent(height, context),
                  );
                },
              );
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

  TextFormField textfield({
    required String text,
    required TextInputType inputType,
    required Icon prefixIcon,
    TextEditingController? controller,
    bool obscuretext = false,
    VoidCallback? onPressed,
  }) {
    return TextFormField(
      obscureText: obscuretext,
      keyboardType: inputType,
      controller: controller,
      style: const TextStyle(
        color: Colors.black87,
      ),
      onTap: onPressed,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: text,
        labelStyle: GoogleFonts.montserrat(
            color: Colors.black54, fontWeight: FontWeight.w400, fontSize: 15),
        isCollapsed: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xFFAC6FFA), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
      ),
    );
  }

  Padding addEvent(double height, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              'Add Event',
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          textfield(
            prefixIcon: const Icon(Icons.event_note),
            text: 'Name of Event',
            inputType: TextInputType.text,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          textfield(
            prefixIcon: const Icon(Icons.date_range),
            text: 'Date',
            inputType: TextInputType.none,
            controller: datePicker,
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );

              if (pickedDate != null) {
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);

                setState(() {
                  datePicker.text = formattedDate;
                });
              }
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          textfield(
              prefixIcon: const Icon(Icons.access_time_filled),
              text: 'Time',
              inputType: TextInputType.none,
              controller: timePicker,
              onPressed: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (pickedTime != null) {
                  String formattedTime =
                      '${pickedTime.hour}:${pickedTime.minute}';

                  setState(() {
                    timePicker.text = formattedTime;
                  });
                }
              }),
          SizedBox(
            height: height * 0.02,
          ),
          textfield(
              prefixIcon: const Icon(Icons.my_location),
              text: 'Location',
              inputType: TextInputType.text),
          SizedBox(
            height: height * 0.01,
          ),
          const Row(children: <Widget>[
            Expanded(child: Divider(indent: 20.0, endIndent: 10.0)),
            Text("OR"),
            Expanded(child: Divider(indent: 10.0, endIndent: 20.0)),
          ]),
          SizedBox(
            height: height * 0.01,
          ),
          textfield(
              prefixIcon: const Icon(Icons.location_on),
              text: 'Choose on Map',
              inputType: TextInputType.text),
          SizedBox(
            height: height * 0.04,
          ),
          Align(
            alignment: Alignment.center,
            child: CupertinoButton.filled(
              borderRadius: BorderRadius.circular(30),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Adding Event...')));
                Navigator.pop(context);
              },
              child: Text(
                'Submit',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
