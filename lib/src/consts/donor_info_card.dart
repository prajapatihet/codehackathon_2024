import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonorInfoCard extends StatelessWidget {
  final String name, bloodGroup, location, gen;
  final bool isAvailable;
  final VoidCallback? onPressed;

  const DonorInfoCard({
    super.key,
    required this.name,
    required this.bloodGroup,
    required this.location,
    required this.isAvailable,
    required this.gen,
    this.onPressed,
  });

  bool isType(String g) {
    if (g.toLowerCase() == 'male') {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 0.2,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                isType(gen)
                    ? 'assets/images/user1.png'
                    : 'assets/images/user2.png',
                height: MediaQuery.of(context).size.height / 13,
              ),
              SizedBox(
                width: width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      bloodGroup,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      location,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      isAvailable ? "Available" : "Not Available",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: isAvailable ? Colors.green : Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Calling $name')));
                },
                child: Icon(
                  Icons.call,
                  size: width / 15,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
