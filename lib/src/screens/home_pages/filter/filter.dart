import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int? _value1 = 0;

  final List<String> _bloodGroupList = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
    'Rh+',
    'Rh-'
  ];
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close, size: 27),
                ),
              ),
              SizedBox(height: height * 0.01),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Choose Blood Group',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Wrap(
                    spacing: 7.0,
                    children: List<Widget>.generate(
                      _bloodGroupList.length,
                      (int index) {
                        return ChoiceChip(
                          label: Text(
                            _bloodGroupList[index],
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          selected: _value1 == index,
                          onSelected: (bool selected) {
                            setState(() {
                              _value1 = selected ? index : null;
                            });
                          },
                        );
                      },
                    ).toList(),
                  ),
                ],
              ),
              SizedBox(height: height * 0.01),
              Text(
                'City',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(height: height * 0.01),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: cityController,
                style: GoogleFonts.montserrat(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.location_city),
                  labelText: 'Enter city name',
                  labelStyle: GoogleFonts.montserrat(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  isCollapsed: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Color(0xFFAC6FFA), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                'State',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(height: height * 0.01),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: stateController,
                style: GoogleFonts.montserrat(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.map),
                  labelText: 'Enter state name',
                  labelStyle: GoogleFonts.montserrat(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  isCollapsed: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Color(0xFFAC6FFA), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: countryController,
                style: GoogleFonts.montserrat(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.map),
                  labelText: 'Enter state name',
                  labelStyle: GoogleFonts.montserrat(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  isCollapsed: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Color(0xFFAC6FFA), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Applying $_value1')));

                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Apply Filter',
                    style: GoogleFonts.montserrat(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
