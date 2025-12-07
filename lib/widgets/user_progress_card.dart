import 'package:flutter/material.dart';

class UserProgressCard extends StatelessWidget {
  final MaterialColor color_passed;
  final String type_of_task_passed;
  final String task_count_passed;
  final IconData icon_passed;     // dynamic icon

  const UserProgressCard({
    super.key,
    required this.color_passed,
    required this.type_of_task_passed,
    required this.task_count_passed,
    required this.icon_passed,    // added here
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 130,
      child: Card(
        elevation: 3,
        shadowColor: color_passed.shade300,
        color: color_passed.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon_passed,                   // dynamic icon
              size: 28,
              color: color_passed.shade700,  // dynamic color
            ),

            const SizedBox(height: 8),

            Text(
              task_count_passed,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: color_passed.shade700,
              ),
            ),

            Text(
              type_of_task_passed,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: color_passed.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
