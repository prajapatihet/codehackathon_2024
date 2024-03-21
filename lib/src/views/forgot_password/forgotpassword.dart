import 'package:donorconnect/src/utils/routes/route_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final email = TextEditingController();
  final otp = TextEditingController();

  @override
  void dispose() {
    email.clear();
    email.dispose();
    otp.clear();
    otp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.08,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Forgot Password',
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              textfield(
                text: "Email",
                controller: email,
                inputType: TextInputType.emailAddress,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(30),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Generating Otp...')));
                  },
                  child: Text(
                    'Get OTP',
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              textfield(
                text: "Enter OTP",
                controller: otp,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: height * 0.03),
              CupertinoButton.filled(
                borderRadius: BorderRadius.circular(30),
                onPressed: () {
                  if (email.text == 'admin@gmail.com'.toLowerCase() &&
                      otp.text == '123456') {
                    Navigator.pushReplacementNamed(
                        context, RouterConstant.resetpassword);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Invalid Credentials...')));
                  }
                },
                child: Text(
                  'Verify',
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, RouterConstant.login);
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
                            text: 'Back to Login? ',
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
              SizedBox(
                height: height * 0.1,
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
            color: const Color.fromARGB(255, 144, 140, 227),
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
