import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';

class BalanceCardAtom extends StatelessWidget {
  const BalanceCardAtom({
    super.key,
    required this.cardColor,
    required this.title,
    required this.value,
    this.icon,
  });

  final String title;
  final String value;
  final Color cardColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      constraints: BoxConstraints(
        minHeight: 80.0,
        minWidth: 150.0,
        maxWidth: 180.0,
      ),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTypography.bodySmall
                    .copyWith(color: AppColors.kPrimaryColor),
              ),
              Icon(
                icon,
                size: 20,
                color: AppColors.kPrimaryColor,
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            value,
            style: AppTypography.titleMedium
                .copyWith(color: AppColors.kPrimaryColor),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
