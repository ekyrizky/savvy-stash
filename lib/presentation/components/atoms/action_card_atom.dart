import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';

class ActionCardAtom extends StatelessWidget {
  const ActionCardAtom({
    super.key,
    required this.text,
    required this.icon,
    required this.onClick,
  });

  final String text;
  final IconData icon;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.all(8),
        constraints: BoxConstraints(
          minHeight: 80.0,
          minWidth: 150.0,
          maxWidth: 180.0,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.kSecondaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 32,
              color: AppColors.kSecondaryColor,
            ),
            Text(
              text,
              style: AppTypography.titleMedium
                  .copyWith(color: AppColors.kSecondaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
