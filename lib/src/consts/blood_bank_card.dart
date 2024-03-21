import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BloodBankCard extends StatelessWidget {
  final String name, location, time;
  final String long, lat;

  const BloodBankCard({
    super.key,
    required this.name,
    required this.location,
    required this.time,
    required this.long,
    required this.lat,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 1,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width,
              child: Image.asset(
                'assets/images/bloodbank1.jpeg',
                height: height * 0.2,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 3, top: 1, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Location: $location',
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Time: $time',
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Calling to...')));
                        },
                        icon: const Icon(
                          Icons.call,
                          size: 17,
                        ),
                        label: Text(
                          'Call',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('About blood bank...')));
                        },
                        icon: const Icon(
                          Icons.info,
                          size: 17,
                        ),
                        label: Text(
                          'Know more',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          launchUrl(
                            Uri.parse(
                                'https://www.google.com/maps/dir/?api=1&destination=$lat,$long'),
                            mode: LaunchMode.inAppBrowserView,
                          );
                        },
                        child: const Icon(
                          Icons.directions,
                          size: 17,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
