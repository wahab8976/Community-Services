import 'package:flutter/material.dart';

class UserTypeCard extends StatelessWidget {
  final String userType_passed;
  final String caption_passed;
  final IconData icon_passed;

  const UserTypeCard({
    super.key,
    required this.userType_passed,
    required this.caption_passed,
    required this.icon_passed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 135,
      height: 200,
      child: Card(
        elevation: 3, // optional shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon_passed, size: 40, color: Colors. grey),
              const SizedBox(height: 10),
              Text(
                userType_passed,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                textAlign: TextAlign.center,
                caption_passed,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
