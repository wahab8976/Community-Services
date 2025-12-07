import 'package:flutter/material.dart';

class MyActivities extends StatelessWidget {
  const MyActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: // Place this inside your Scaffold body:
      DefaultTabController(
        length: 2, // 2 Tabs: Services & Events
        child: Column(
          children: [
            // 1. THE TOGGLE BAR DESIGN
            Container(
              height: 50,
              margin: const EdgeInsets.all(16.0), // Spacing from edges
              decoration: BoxDecoration(
                color: Colors.grey[200], // Light grey background
                borderRadius: BorderRadius.circular(8),
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent, // Hides the default blue line

                // The Blue Active Indicator
                indicator: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(8),
                ),

                // Text & Icon Styles
                labelColor: Colors.white, // Active text color
                unselectedLabelColor: Colors.grey[700], // Inactive text color
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),

                tabs: const [
                  // Tab 1: Services
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.list_alt_rounded),
                        SizedBox(width: 8),
                        Text("Services"),
                      ],
                    ),
                  ),
                  // Tab 2: Events
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_month_outlined),
                        SizedBox(width: 8),
                        Text("Events"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // 2. THE CONTENT (Switches Automatically)
            Expanded(
              child: TabBarView(
                children: [
                  // View for "Services"
                  ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: const [
                      // Replace this with your Service Card Widgets
                      Center(child: Text("Services List")),
                    ],
                  ),

                  // View for "Events"
                  ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: const [
                      // Replace this with your Event Card Widgets
                      Center(child: Text("Events List")),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
