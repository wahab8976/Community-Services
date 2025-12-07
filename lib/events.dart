import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.blue.shade900,
          child: Text('A'),
        ),
        label: Text('Flutter'),
        backgroundColor: Colors.grey.shade200,
        onDeleted: () {
          print('Chip deleted');
        },
      )
    );
  }
}
