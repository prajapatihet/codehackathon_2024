import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<dynamic> donorData = [];

  @override
  void initState() {
    loadDonorData();
    super.initState();
  }

  Future<void> loadDonorData() async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/loadjson/donorinfo.json');
    setState(() {
      donorData = json.decode(jsonString);
    });
  }

  List<dynamic> filterData(String query) {
    // Assuming the JSON data is a list of objects
    return donorData
        .where((item) =>
            (item['bloodgroup'].toLowerCase().contains(query.toLowerCase()) ||
                item['location'].toLowerCase().contains(query.toLowerCase())) &&
            item['available'] == true)
        .toList();
  }

  Widget appBarTitle = Text(
    "Find Donor",
    style: GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 1,
    ),
  );
  bool isType(String g) {
    if (g.toLowerCase() == 'male') {
      return true;
    } else {
      return false;
    }
  }

  Icon actionIcon = const Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: appBarTitle,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (actionIcon.icon == Icons.search) {
                  actionIcon = const Icon(Icons.close);
                  appBarTitle = TextField(
                    autofocus: true,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          donorData = filterData(value);
                        });
                      } else {
                        setState(() {
                          loadDonorData();
                        });
                      }
                    },
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search, color: Colors.black),
                      hintText: "Search...",
                      hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey,
                      ),
                    ),
                  );
                } else {
                  loadDonorData();
                  actionIcon = const Icon(Icons.search, color: Colors.black);
                  appBarTitle = Text(
                    "Find Donor",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  );
                }
              });
            },
          ),
        ],
      ),
      // appBar: AppBar(
      //   title: appBarTitle,
      //   automaticallyImplyLeading: false,
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           Navigator.pushNamed(context, RouterConstant.filterdonor);
      //         },
      //         icon: actionIcon),
      //   ],
      // ),
      // body: SingleChildScrollView(
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           SizedBox(
      //             height: height * 0.001,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: SizedBox(
        width: width,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                elevation: 0.2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        isType(donorData[index]['gender'])
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
                              donorData[index]['name'],
                              style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              donorData[index]['bloodgroup'],
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              donorData[index]['location'],
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              donorData[index]['available']
                                  ? "Available"
                                  : "Not Available",
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: donorData[index]['available']
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text('Calling ${donorData[index]['phone']}'),
                          ));
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
          },
          itemCount: donorData.isEmpty ? 0 : donorData.length,
        ),
      ),
    );
  }
}
