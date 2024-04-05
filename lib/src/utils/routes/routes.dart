import 'package:donorconnect/src/utils/routes/page_transtion.dart';
import 'package:donorconnect/src/utils/routes/route_constant.dart';
import 'package:donorconnect/src/views/aboutdonating/main_about.dart';
import 'package:donorconnect/src/views/forgot_password/forgotpassword.dart';
import 'package:donorconnect/src/views/forgot_password/reset_password.dart';
import 'package:donorconnect/src/views/form/donate.dart';
import 'package:donorconnect/src/views/form/request.dart';
import 'package:donorconnect/src/views/form/feedback.dart';
import 'package:donorconnect/src/views/getstart/onboarding.dart';
import 'package:donorconnect/src/views/home_pages/bloodbank/blood_bank.dart';
import 'package:donorconnect/src/views/home_pages/filter/filter.dart';
import 'package:donorconnect/src/views/login/login_screen.dart';
import 'package:donorconnect/src/views/main_home/main_home.dart';
import 'package:donorconnect/src/views/profile_pages/termcondition.dart';
import 'package:donorconnect/src/views/signup/more_info.dart';
import 'package:donorconnect/src/views/signup/sign_up_screen.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstant.getstarted:
        return slidePageRoute(const OnBoardingScreen());
      case RouterConstant.login:
        return slidePageRoute(const LogInScreen());
      case RouterConstant.register:
        return slidePageRoute(const SignUpScreen());
      case RouterConstant.mainhome:
        return slidePageRoute(const MainHomeScreen());
      case RouterConstant.moreinfo:
        return slidePageRoute(const UserMoreInfo());
      case RouterConstant.bloodbanks:
        return slidePageRoute(const BloodBankScreen());
      case RouterConstant.aboutdonate:
        return slidePageRoute(const MainAboutScreen());
      case RouterConstant.filterdonor:
        return slidePageRoute(const FilterScreen());
      case RouterConstant.forgotpassword:
        return slidePageRoute(const ForgotPassword());
      case RouterConstant.resetpassword:
        return slidePageRoute(const ResetPasswordScreen());
      case RouterConstant.termcondition:
        return slidePageRoute(const TnCScreen());
      case RouterConstant.donateform:
        return slidePageRoute(const DonateForm());
      case RouterConstant.requestform:
        return slidePageRoute(const RequestForm());
      case RouterConstant.feedbackform:
        return slidePageRoute(const FeedbackForm());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No route found'),
            ),
          ),
        );
    }
  }
}
