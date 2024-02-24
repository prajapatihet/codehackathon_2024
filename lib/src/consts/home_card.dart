import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  String title, description, button, image;
  VoidCallback? onPressed;
  HomeCard({
    super.key,
    required this.title,
    required this.description,
    required this.button,
    required this.image,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 238, 225, 225).withOpacity(0.2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  image,
                  width: width,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.001,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    description,
                    style: GoogleFonts.montserrat(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Clicked  $title')));
                    },
                    child: Text(
                      button,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
