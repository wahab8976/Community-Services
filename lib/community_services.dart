import 'package:community_services/home_page.dart';
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
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Services'),
        centerTitle: true,
      ),
      body: screens[selected_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        onTap: (tappedIndex) {
          setState(() {
            selected_index = tappedIndex;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
