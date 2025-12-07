import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool pushNotifications = true;
  bool locationServices = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Push Notifications
          SwitchListTile(
            title: const Text("Push Notifications"),
            secondary: const Icon(Icons.notifications),
            value: pushNotifications,
            onChanged: (value) {
              setState(() {
                pushNotifications = value;
              });
            },
          ),
          const SizedBox(height: 20),

          // Privacy Section Label
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "PRIVACY",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                letterSpacing: 1.2,
              ),
            ),
          ),

          // Location Services
          SwitchListTile(
            title: const Text("Location Services"),
            secondary: const Icon(Icons.location_on),
            value: locationServices,
            onChanged: (value) {
              setState(() {
                locationServices = value;
              });
            },
          ),
          const SizedBox(height: 20),

          // Data Section Label
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "DATA",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                letterSpacing: 1.2,
              ),
            ),
          ),

          // Clear Cached Data
          ListTile(
            leading: const Icon(Icons.delete_outline),
            title: const Text("Clear Cached Data"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Add clear cache functionality here
            },
          ),
          const SizedBox(height: 20),

          // Account Section Label
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "ACCOUNT",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                letterSpacing: 1.2,
              ),
            ),
          ),

          // Delete Account
          ListTile(
            leading: const Icon(Icons.person_off, color: Colors.red),
            title: const Text(
              "Delete Account",
              style: TextStyle(color: Colors.red),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.red),
            onTap: () {
              // Add delete account functionality here
            },
          ),

          const SizedBox(height: 40),

          // App Version
          const Center(
            child: Text(
              "Community Services v1.0.0",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
