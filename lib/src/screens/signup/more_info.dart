import 'package:flutter/material.dart';

class UserMoreInfo extends StatefulWidget {
  const UserMoreInfo({super.key});

  @override
  State<UserMoreInfo> createState() => _UserMoreInfoState();
}

class _UserMoreInfoState extends State<UserMoreInfo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Text('Welcome to this Page')
            ],
          ),
        ),
      ),
    );
  }
}
