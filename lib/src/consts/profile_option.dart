import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Options extends StatelessWidget {
  final String option;
  final VoidCallback onPressed;
  final Icon icon;
  const Options({
    super.key,
    required this.option,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: width * 0.05,
            ),
            Text(
              option,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
