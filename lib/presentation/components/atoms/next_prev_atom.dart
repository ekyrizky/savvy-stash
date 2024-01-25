import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';

class NextPrevAtom extends StatelessWidget {
  const NextPrevAtom({super.key, required this.onNext, required this.onPrev});

  final VoidCallback onNext;
  final VoidCallback onPrev;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onPrev,
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: AppColors.kPrimaryColor,
          ),
        ),
        SizedBox(width: 8),
        GestureDetector(
          onTap: onNext,
          child: Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: AppColors.kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
