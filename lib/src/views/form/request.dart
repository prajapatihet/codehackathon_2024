import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestForm extends StatelessWidget {
  const RequestForm({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Text(
                  "Request Form",
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                textfield(
                  icon: const Icon(Icons.person),
                  text: 'Enter your Name',
                  inputType: TextInputType.name,
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                textfield(
                  icon: const Icon(Icons.bloodtype),
                  text: 'Enter Blood Group',
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                textfield(
                  icon: const Icon(Icons.location_on),
                  text: 'Enter Location',
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                textfield(
                  icon: const Icon(Icons.report),
                  text: 'Urgent Required',
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CupertinoButton.filled(
                    borderRadius: BorderRadius.circular(30),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Request Send...')));
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Request',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
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
    );
  }

  TextFormField textfield({
    required String text,
    required TextInputType inputType,
    required Icon icon,
    TextEditingController? controller,
    VoidCallback? onPressed,
  }) {
    return TextFormField(
      keyboardType: inputType,
      controller: controller,
      style: const TextStyle(
        color: Colors.black87,
      ),
      onTap: onPressed,
      decoration: InputDecoration(
        prefixIcon: icon,
        labelText: text,
        labelStyle: GoogleFonts.montserrat(
            color: Colors.black54, fontWeight: FontWeight.w400, fontSize: 15),
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
