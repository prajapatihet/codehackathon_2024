import 'package:codehackathon_2024/src/utils/routes/route_constant.dart';
import 'package:codehackathon_2024/src/views/main_home/main_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class UserMoreInfo extends StatefulWidget {
  const UserMoreInfo({super.key});

  @override
  State<UserMoreInfo> createState() => _UserMoreInfoState();
}

enum Gender { male, female, other }

class _UserMoreInfoState extends State<UserMoreInfo> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final bgController = TextEditingController();
  final locController = TextEditingController();
  final phoneController = TextEditingController();
  String groupValue = 'Male';
  bool isAvailable = false;
  Gender? _gender = Gender.male;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Complete your donor profile',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 50,
        toolbarOpacity: 0.8,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  textfield(
                    preIcon: const Icon(Icons.person),
                    controller: nameController,
                    inputType: TextInputType.name,
                    text: 'Enter your name',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Age',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  textfield(
                    preIcon: const Icon(Icons.calendar_month),
                    controller: ageController,
                    inputType: TextInputType.name,
                    text: 'Enter your age',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Blood Group',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  textfield(
                    preIcon: const Icon(Icons.bloodtype),
                    controller: bgController,
                    inputType: TextInputType.name,
                    text: 'Enter your Blood Group',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Location',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  textfield(
                    preIcon: const Icon(Icons.location_on),
                    controller: locController,
                    inputType: TextInputType.name,
                    text: 'Enter your location',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Phone Number',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  textfield(
                    preIcon: const Icon(Icons.call),
                    controller: phoneController,
                    inputType: TextInputType.name,
                    text: 'Enter your Phone Number',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isAvailable,
                        onChanged: (bool? value) {
                          setState(() {
                            isAvailable = value!;
                          });
                        },
                      ),
                      Text(
                        'Available for donating blood',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Select your Gender',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Radio(
                        value: 'Male',
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = value!;
                          });
                        },
                      ),
                      Text(
                        'Male',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                        ),
                      ),
                      Radio(
                        value: 'Female',
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = value!;
                          });
                        },
                      ),
                      Text(
                        'Female',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                        ),
                      ),
                      Radio(
                        value: 'Other',
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = value!;
                          });
                        },
                      ),
                      Text(
                        'Other',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, RouterConstant.mainhome);
                      },
                      child: Text(
                        'Submit',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextField textfield({
    required TextEditingController controller,
    required TextInputType inputType,
    bool obscuretext = false,
    required String text,
    required Icon preIcon,
  }) {
    return TextField(
      obscureText: obscuretext,
      keyboardType: inputType,
      controller: controller,
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        prefixIcon: preIcon,
        hintText: text,
        hintStyle: GoogleFonts.montserrat(
            color: Colors.black38, fontWeight: FontWeight.w400, fontSize: 15),
        isCollapsed: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xFFAC6FFA), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
      ),
    );
  }
}
