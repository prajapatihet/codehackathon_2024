import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCardConst extends StatelessWidget {
  String title;
  VoidCallback onPressed;
  HomeCardConst({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 3,
        child: Container(
          width: width / 2.5,
          height: height * 0.05,
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.greenAccent, Colors.cyanAccent]),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
