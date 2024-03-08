import 'package:connectblooddonor/src/utils/routes/route_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  final conpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Register',
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
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
                height: height * 0.02,
              ),
              textfield(
                text: "Re-type Password",
                controller: conpassword,
                inputType: TextInputType.visiblePassword,
                obscuretext: true,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, RouterConstant.moreinfo);
                },
                child: Text(
                  'Register',
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
                      Navigator.pushNamed(context, RouterConstant.login);
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
                            text: 'Already have an account? ',
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                            ),
                          ),
                          TextSpan(
                            text: 'Log-In',
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
