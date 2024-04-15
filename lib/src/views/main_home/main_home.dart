import 'package:donorconnect/src/views/main_home/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  void dispose() {
    Get.delete<NavigationController>();
    super.dispose();
  }

  void _showBackDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
            'Are you sure you want to leave this app?',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('No'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Yes'),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    final controller = Get.put(NavigationController());
    return PopScope(
      canPop: false,
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 70,
            elevation: 3,
            surfaceTintColor: Colors.blue,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) {
              controller.selectedIndex.value = index;
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              NavigationDestination(
                icon: Icon(Icons.event),
                label: "Camps",
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
        body: Obx(() => controller.screen[controller.selectedIndex.value]),
      ),
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        _showBackDialog();
      },
      // onWillPop: () async {
      //   final shouldPop = await showDialog<bool>(
      //     context: context,
      //     builder: (context) {
      //       return AlertDialog(
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         title: const Text('Exit'),
      //         content: const Text('Are you sure want to exit the app?'),
      //         actions: [
      //           TextButton(
      //             onPressed: () {
      //               SystemNavigator.pop();
      //             },
      //             child: const Text('Yes'),
      //           ),
      //           TextButton(
      //             onPressed: () {
      //               Navigator.pop(context, false);
      //             },
      //             child: const Text(
      //               'No',
      //               style: TextStyle(color: Colors.red),
      //             ),
      //           ),
      //         ],
      //       );
      //     },
      //   );
      //   return shouldPop!;
      // },
    );
  }
}
