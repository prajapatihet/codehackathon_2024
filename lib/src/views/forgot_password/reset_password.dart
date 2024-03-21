import 'package:connectblooddonor/src/utils/routes/route_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final curPassword = TextEditingController();
  final newPassword = TextEditingController();
  final confirmNewPassword = TextEditingController();

  @override
  void dispose() {
    curPassword.clear();
    curPassword.dispose();
    newPassword.clear();
    newPassword.dispose();
    confirmNewPassword.clear();
    confirmNewPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Reset Password',
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              textfield(
                text: "Old Password",
                controller: curPassword,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              textfield(
                text: "New Password",
                controller: curPassword,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              textfield(
                text: "Confirm New Password",
                controller: curPassword,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CupertinoButton.filled(
                borderRadius: BorderRadius.circular(30),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, RouterConstant.login);
                },
                child: Text(
                  'Reset Password',
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField textfield({
    required TextEditingController controller,
    required TextInputType inputType,
    bool obscuretext = false,
    required String text,
  }) {
    return TextFormField(
      obscureText: obscuretext,
      keyboardType: inputType,
      controller: controller,
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        labelText: text,
        labelStyle: GoogleFonts.montserrat(
            color: Color.fromARGB(255, 144, 140, 227),
            fontWeight: FontWeight.w400,
            fontSize: 15),
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
