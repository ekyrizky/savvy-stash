import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';

class CalendarAtom extends StatelessWidget {
  const CalendarAtom({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Row(
        children: [
          Icon(
            Icons.edit_calendar,
            size: 24,
            color: AppColors.kPrimaryColor,
          ),
          SizedBox(width: 6),
          Text(
            'Januari 2024',
            style: AppTypography.bodyMedium
                .copyWith(color: AppColors.kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
