import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonateForm extends StatelessWidget {
  const DonateForm({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              textfield(
                text: 'Enter your Name',
                inputType: TextInputType.name,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              textfield(
                text: 'Enter Blood Group',
                inputType: TextInputType.name,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              textfield(
                text: 'Enter your Name',
                inputType: TextInputType.name,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              textfield(
                text: 'Enter your Name',
                inputType: TextInputType.name,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              textfield(
                text: 'Enter your Name',
                inputType: TextInputType.name,
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField textfield({
    required String text,
    required TextInputType inputType,
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
