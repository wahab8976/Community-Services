import 'package:flutter/material.dart';

class ServicesTypeChip extends StatelessWidget {
  final String chipName;
  final IconData icon;

  const ServicesTypeChip({
    super.key,
    required this.chipName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(
        icon,
        size: 20,
        color: Colors.grey,
      ),
      label: Text(
        chipName,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    );
  }
}
