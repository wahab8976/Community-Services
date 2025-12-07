import 'package:flutter/material.dart';

class UserProfileNavigationBtn extends StatelessWidget {
  final String title_passed;
  final IconData icon_passed;
  final Color color_passed;

  const UserProfileNavigationBtn({
    super.key,
    required this.title_passed,
    required this.icon_passed,
    required this.color_passed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 3,
          children: [
            Icon(icon_passed, color: color_passed),
            const SizedBox(width: 5),
            Text(
              title_passed,
              style: TextStyle(fontSize: 17, color: color_passed),
            ),
          ],
        ),
      ),
    );
  }
}
