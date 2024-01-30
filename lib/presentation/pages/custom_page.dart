import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  const CustomPage({super.key, required this.label});

  final String label;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(label),
    );
  }
}
