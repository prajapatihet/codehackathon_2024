import 'package:codehackathon_2024/src/screens/home_pages/filter/filter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/donor_info_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Widget appBarTitle = Text(
    "Find Donor",
    style: GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  );
  Icon actionIcon = const Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: appBarTitle,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FilterScreen()));
              },
              icon: actionIcon),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 5),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10.0),
                //     border: Border.all(width: 1),
                //     color: Colors.transparent,
                //   ),
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //       hintText: 'Search city...',
                //       border: InputBorder.none,
                //       prefixIcon: Icon(Icons.search_outlined),
                //       suffixIcon: Icon(Icons.location_on),
                //       hintStyle: GoogleFonts.montserrat(
                //         fontSize: 17,
                //         fontWeight: FontWeight.w400,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: height * 0.001,
                ),
                DonorInfoCard(
                  image: 'assets/images/user1.png',
                  name: "Devraj Gohil",
                  bloodGroup: "O+",
                  location: "Delhi",
                  isAvailable: true,
                ),
                DonorInfoCard(
                  image: 'assets/images/user1.png',
                  name: "Harsh Darji",
                  bloodGroup: "O+",
                  location: "Vadodara",
                  isAvailable: true,
                ),
                DonorInfoCard(
                  image: 'assets/images/user1.png',
                  name: "Dev Patel",
                  bloodGroup: "A+",
                  location: "Mumbai",
                  isAvailable: true,
                ),
                DonorInfoCard(
                  image: 'assets/images/user1.png',
                  name: "Karan Parmar",
                  bloodGroup: "AB+",
                  location: "Vadodara",
                  isAvailable: false,
                ),
                DonorInfoCard(
                  image: 'assets/images/user1.png',
                  name: "Jayesh Chavda",
                  bloodGroup: "Rh+",
                  location: "Anand",
                  isAvailable: false,
                ),
                DonorInfoCard(
                  image: 'assets/images/user1.png',
                  name: "Jay Patel",
                  bloodGroup: "O-",
                  location: "Nadiad",
                  isAvailable: true,
                ),
                DonorInfoCard(
                  image: 'assets/images/user1.png',
                  name: "Daksh Patel",
                  bloodGroup: "O-",
                  location: "Bharuch",
                  isAvailable: false,
                ),
                DonorInfoCard(
                  image: 'assets/images/user1.png',
                  name: "Reeya Prajapati",
                  bloodGroup: "O-",
                  location: "Vadodara",
                  isAvailable: true,
                ),
                DonorInfoCard(
                  image: 'assets/images/user1.png',
                  name: "Deep Patel",
                  bloodGroup: "O-",
                  location: "Surat",
                  isAvailable: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
