import 'package:flutter/material.dart';

class RoundedImageAtom extends StatelessWidget {
  const RoundedImageAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset(
        'assets/img_avatar_male.png',
        width: 56.0,
        height: 56.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
