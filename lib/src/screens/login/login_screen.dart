import 'package:codehackathon_2024/src/screens/main_home/main_home.dart';
import 'package:codehackathon_2024/src/screens/signup/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    email.clear();
    email.dispose();
    password.clear();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: height * 0.15),
              //Image.asset('assets/images/logo.png', height: height * 0.08),
              // SizedBox(
              //   height: height * 0.01,
              // ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome back',
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              textfield(
                  text: "Email",
                  controller: email,
                  inputType: TextInputType.emailAddress),
              SizedBox(
                height: height * 0.02,
              ),
              textfield(
                text: "Password",
                controller: password,
                inputType: TextInputType.visiblePassword,
                obscuretext: true,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Forgot Psssword Clicked')));
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: height * 0.035),
              ElevatedButton(
                onPressed: () {
                  if (email.text == "admin" && password.text == "admin") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainHomeScreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Check your username and password!!!')));
                  }
                },
                child: Text(
                  'Log-In',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Don\'t have an account? ',
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign-Up',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02)
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
