import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampInfoCard extends StatelessWidget {
  String title, date, time, venue, description;
  VoidCallback? onPressed;
  CampInfoCard({
    super.key,
    required this.title,
    required this.date,
    required this.time,
    required this.venue,
    required this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 0.2,
      child: SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Date: $date',
                style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                'Time: $time',
                style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                'Venue: $venue',
                style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                'Description: $description',
                style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    )),
                    builder: (BuildContext context) {
                      return Container(
                        width: width,
                        height: height * 0.35,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title,
                                style: GoogleFonts.montserrat(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                'Date: $date',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Text(
                                'Time: $time',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Text(
                                'Venue: $venue',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Text(
                                'Description: $description',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: height * 0.02),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(
                                                  'Navigating to map...')));
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.directions_rounded,
                                    ),
                                    label: Text(
                                      'Locate',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(
                                                  'Registering for camp...')));
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Register',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(5),
                ),
                child: SizedBox(
                  width: width,
                  child: Center(
                    child: Text(
                      'Register Now',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
