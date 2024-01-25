import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    super.key,
    required this.cardColor,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;
  final Color cardColor;

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
          Text(
            title,
            style: AppTypography.bodySmall
                .copyWith(color: AppColors.kPrimaryColor),
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
