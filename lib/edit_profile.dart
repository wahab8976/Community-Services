import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.person, size: 60, color: Colors.white),
            ),

            const SizedBox(height: 10),

            TextButton(
              onPressed: () {
              },
              child: const Text("Change Profile Picture"),
            ),

            const SizedBox(height: 20),

            _buildTextField(
              hint: "Full Name",
              icon: Icons.person_outline,
            ),

            const SizedBox(height: 15),


            _buildTextField(
              hint: "Email (Cannot be changed)",
              icon: Icons.email_outlined,
              isEnabled: false,
            ),

            const SizedBox(height: 15),

            _buildTextField(
              hint: "Phone Number",
              icon: Icons.phone_outlined,
              keyboardType: TextInputType.phone,
            ),

            const SizedBox(height: 15),

            _buildTextField(
              hint: "Address",
              icon: Icons.location_on_outlined,
            ),

            const SizedBox(height: 15),

            _buildTextField(
              hint: "CNIC (xxxxx-xxxxxxx-x)",
              icon: Icons.confirmation_number_outlined,
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Save profile logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Save Changes",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hint,
    required IconData icon,
    bool isEnabled = true,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      enabled: isEnabled,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        hintText: hint,
        prefixIcon: Icon(icon, color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.green, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
      ),
    );
  }
}