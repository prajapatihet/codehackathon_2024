import 'package:codehackathon_2024/src/views/home_pages/events_page.dart';
import 'package:codehackathon_2024/src/views/home_pages/home_page.dart';
import 'package:codehackathon_2024/src/views/home_pages/profile_page.dart';
import 'package:codehackathon_2024/src/views/home_pages/search_page.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screen = [
    const HomePage(),
    const SearchPage(),
    const EventsPage(),
    const ProfilePage(),
  ];
}
