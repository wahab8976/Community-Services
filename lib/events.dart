import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          Icon(Icons.upcoming, size: 50),

          // Bold heading
          Text(
            'No Events Available',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),

          // Soft explanation
          Text(
            'It looks like no events have been created yet.\n'
                'You can be the first to post a service or request help!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
