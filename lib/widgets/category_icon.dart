import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.blue.shade100,
          child: Icon(icon, size: 28, color: Colors.blue),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
