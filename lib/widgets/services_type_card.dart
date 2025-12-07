import 'package:flutter/material.dart';

class ServicesTypeCard extends StatelessWidget {
  final String cardName;
  final IconData icon;

  const ServicesTypeCard({
    super.key,
    required this.cardName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 20, color: Colors.grey),
             SizedBox(width: 5), // Spacing between icon and text
            Text(
              cardName,
              style:  TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
