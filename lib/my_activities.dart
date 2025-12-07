import 'package:flutter/material.dart';

class MyActivityScreen extends StatefulWidget {
  const MyActivityScreen({super.key});

  @override
  State<MyActivityScreen> createState() => _MyActivityScreenState();
}

class _MyActivityScreenState extends State<MyActivityScreen> {
  int selectedTab = 0; // 0 = Services, 1 = Events
  int selectedType = 0; // 0 = Offered, 1 = Requested

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "My Activity",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),

              // ================= TOP TABS =================
              Row(
                children: [
                  _topTab("Services", Icons.list, 0),
                  const SizedBox(width: 10),
                  _topTab("Events", Icons.calendar_month, 1),
                ],
              ),

              const SizedBox(height: 15),

              // ================= SMALL TABS =================
              Row(
                children: [
                  _smallTab("Offered", 0),
                  const SizedBox(width: 8),
                  _smallTab("Requested", 1),
                ],
              ),

              const SizedBox(height: 15),

              // ================= LIST =================
              Expanded(
                child: ListView(
                  children: [

                    // ====== SERVICES - OFFERED ======
                    if (selectedTab == 0 && selectedType == 0) ...[
                      _activityCard(
                        icon: Icons.menu_book,
                        title: "Tutor",
                        category: "Education - Offering",
                        desc: "A trained teacher offering tutoring services.",
                        user: "fdg",
                        location: "Lalamusa",
                      ),
                      _activityCard(
                        icon: Icons.favorite,
                        title: "Blood Donation Help",
                        category: "Health - Offering",
                        desc: "Ready to donate blood whenever needed.",
                        user: "fdg",
                        location: "Gujrat",
                      ),
                    ],

                    // ====== SERVICES - REQUESTED ======
                    if (selectedTab == 0 && selectedType == 1) ...[
                      _activityCard(
                        icon: Icons.help_outline,
                        title: "Need Math Tutor",
                        category: "Education - Requested",
                        desc: "Looking for a home tutor for grade 6.",
                        user: "fdg",
                        location: "Gujrat",
                      ),
                      _activityCard(
                        icon: Icons.bloodtype,
                        title: "Urgent O+ Blood Needed",
                        category: "Health - Requested",
                        desc: "Urgent blood required at Aziz Bhatti Hospital.",
                        user: "fdg",
                        location: "Lalamusa",
                      ),
                    ],

                    // ====== EVENTS - OFFERED ======
                    if (selectedTab == 1 && selectedType == 0) ...[
                      _activityCard(
                        icon: Icons.event,
                        title: "Community Clean-Up Drive",
                        category: "Public Service Event",
                        desc:
                        "Join us this Sunday for a community cleaning campaign.",
                        user: "Organizer",
                        location: "Jhelum",
                      ),
                      _activityCard(
                        icon: Icons.group,
                        title: "Free Medical Camp",
                        category: "Health Event",
                        desc: "Free check-up camp with expert doctors.",
                        user: "Health Dept",
                        location: "Gujrat",
                      ),
                    ],

                    // ====== EVENTS - REQUESTED ======
                    if (selectedTab == 1 && selectedType == 1) ...[
                      _activityCard(
                        icon: Icons.campaign,
                        title: "Volunteers Needed",
                        category: "Event Assistance - Requested",
                        desc: "Need volunteers for upcoming charity marathon.",
                        user: "fdg",
                        location: "Lalamusa",
                      ),
                      _activityCard(
                        icon: Icons.handshake,
                        title: "Event Organizers Needed",
                        category: "Management - Requested",
                        desc: "Looking for organizers for community awareness event.",
                        user: "fdg",
                        location: "Gujrat",
                      ),
                    ],
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // ================= TOP TAB =================
  Widget _topTab(String title, IconData icon, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: selectedTab == index ? Colors.blue : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 18,
                color: selectedTab == index ? Colors.white : Colors.black54,
              ),
              const SizedBox(width: 6),
              Text(
                title,
                style: TextStyle(
                  color:
                  selectedTab == index ? Colors.white : Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ================= SMALL TAB =================
  Widget _smallTab(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedType = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          color:
          selectedType == index ? Colors.blue.shade100 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: selectedType == index ? Colors.blue : Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  // ================= ACTIVITY CARD =================
  Widget _activityCard({
    required IconData icon,
    required String title,
    required String category,
    required String desc,
    required String user,
    required String location,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Colors.grey.shade200,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // HEADER
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: Colors.blue),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      category,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Active",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 8),

          Text(desc, style: const TextStyle(fontSize: 13)),

          const SizedBox(height: 8),

          // FOOTER
          Row(
            children: [
              const Icon(Icons.person, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(user, style: const TextStyle(fontSize: 12)),

              const Spacer(),

              const Icon(Icons.location_on, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(location, style: const TextStyle(fontSize: 12)),
            ],
          ),

          const Divider(height: 20),

          // ACTIONS
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}