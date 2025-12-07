import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String label_passed;
  final String hint_passed;
  final IconData? prefixIcon_passed;
  final bool obscureText_passed;
  final TextEditingController? controller_passed;

  const AuthTextField({
    super.key,
    required this.label_passed,
    required this.hint_passed,
    this.prefixIcon_passed,
    this.obscureText_passed = false,
    this.controller_passed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label_passed,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 6),
          TextField(
            controller: controller_passed,
            obscureText: obscureText_passed,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade100,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              prefixIcon: prefixIcon_passed != null
                  ? Icon(
                prefixIcon_passed,
                color: Colors.grey,
              )
                  : null,
              hintText: hint_passed,
            ),
          ),
        ],
      ),
    );
  }
}
