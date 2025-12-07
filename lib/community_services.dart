import 'package:community_services/events.dart';
import 'package:community_services/home_page.dart';
import 'package:community_services/my_activities.dart';
import 'package:community_services/settings.dart';
import 'package:community_services/sign_up.dart';
import 'package:community_services/user_profile.dart';
import 'package:flutter/material.dart';

class CommunityServices extends StatefulWidget {
  const CommunityServices({super.key});

  @override
  State<CommunityServices> createState() => _CommunityServicesState();
}

class _CommunityServicesState extends State<CommunityServices> {
  int selected_index = 0;

  final List<Widget> screens = const [
    HomePage(),
    Events(),
    MyActivities(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    // Dynamically create AppBar based on selected_index
    AppBar currentAppBar;
    switch (selected_index) {
      case 0:
        currentAppBar = AppBar(
          title: const Text("Home"),
          centerTitle: true,
        );
        break;
      case 1:
        currentAppBar = AppBar(
          title: const Text("Events"),
          centerTitle: true,
        );
        break;
      case 2:
        currentAppBar = AppBar(
          title: const Text("Tasks"),
          centerTitle: true,
        );
        break;
      case 3:
        currentAppBar = AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
          ],
        );
        break;
      default:
        currentAppBar = AppBar(title: const Text("App"));
    }

    return Scaffold(
      appBar: currentAppBar,
      body: screens[selected_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.blue),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        type: BottomNavigationBarType.fixed,
        onTap: (tappedIndex) {
          setState(() {
            selected_index = tappedIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "My",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
