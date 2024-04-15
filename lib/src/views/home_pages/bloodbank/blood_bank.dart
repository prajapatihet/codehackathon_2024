import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BloodBankScreen extends StatefulWidget {
  const BloodBankScreen({super.key});

  @override
  State<BloodBankScreen> createState() => _BloodBankScreenState();
}

class _BloodBankScreenState extends State<BloodBankScreen> {
  List<dynamic> newData = [];
  @override
  void initState() {
    loadJsonData();
    super.initState();
  }

  Widget appBarTitle = Text(
    "Find Blood Bank",
    style: GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 1,
    ),
  );

  Future<void> loadJsonData() async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/loadjson/bloodbank.json');
    setState(() {
      newData = json.decode(jsonString);
    });
  }

  List<dynamic> filterData(String query) {
    // Assuming the JSON data is a list of objects
    return newData
        .where((item) =>
            item['name'].toLowerCase().contains(query.toLowerCase()) ||
            item['loc'].toLowerCase().contains(query.toLowerCase()) ||
            item['add'].toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  Icon actionIcon = const Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                          newData = filterData(value);
                        });
                      } else {
                        setState(() {
                          loadJsonData();
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
                        color: Colors.black54,
                      ),
                    ),
                  );
                } else {
                  loadJsonData();
                  actionIcon = const Icon(Icons.search, color: Colors.black);
                  appBarTitle = Text(
                    "Find Blood Bank",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                }
              });
            },
          ),
        ],
      ),
      body: SizedBox(
          width: width,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Card(
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
                          padding: const EdgeInsets.only(
                              left: 8, right: 3, top: 1, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                newData[index]['name'],
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Location: ${newData[index]['loc']!}',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Add: ${newData[index]['add']!}',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Type: ${newData[index]['type']!}',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text('Calling to...')));
                                      },
                                      icon: const Icon(
                                        Icons.call,
                                        size: 16,
                                      ),
                                      label: Text(
                                        'Call',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: ElevatedButton.icon(
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
                                              height: height * (2 / 3),
                                              child: knowmore(
                                                  height, index, context),
                                            );
                                          },
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.info,
                                        size: 16,
                                      ),
                                      label: Text(
                                        'Know more',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
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
                ),
              );
            },
            itemCount: newData.isEmpty ? 0 : newData.length,
          )),
    );
  }

  Padding knowmore(double height, int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                newData[index]['name'],
                style: GoogleFonts.montserrat(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Location:- ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '${newData[index]['loc']}',
                    style: GoogleFonts.montserrat(),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.001),
            RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Address:- ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '${newData[index]['add']}',
                    style: GoogleFonts.montserrat(),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.001),
            RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Pincode:- ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '${newData[index]['pincode']}',
                    style: GoogleFonts.montserrat(),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.001),
            RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Type:- ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '${newData[index]['type']}',
                    style: GoogleFonts.montserrat(),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.001),
            RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Email:- ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '${newData[index]['email']}',
                    style: GoogleFonts.montserrat(),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.001),
            RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Contact:- ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '${newData[index]['phone']}',
                    style: GoogleFonts.montserrat(),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.001),
            RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Availability:- ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '${newData[index]['time']}',
                    style: GoogleFonts.montserrat(),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrl(
                        Uri.parse(
                            'https://www.google.com/maps/dir/?api=1&destination=${newData[index]['lat'].toString()},${newData[index]['long'].toString()}'),
                        mode: LaunchMode.inAppBrowserView,
                      );
                    },
                    icon: const Icon(
                      Icons.directions,
                      size: 18,
                    ),
                    label: Text(
                      'Get Direction',
                      style: GoogleFonts.montserrat(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.error,
                      size: 18,
                      color: Colors.red,
                    ),
                    label: Text(
                      'Report a problem',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
