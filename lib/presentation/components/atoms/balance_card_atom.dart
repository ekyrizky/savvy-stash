import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';

class BalanceCardAtom extends StatelessWidget {
  const BalanceCardAtom({
    super.key,
    required this.title,
    required this.value,
    this.valueColor,
    required this.cardColor,
    this.icon,
    this.border,
  });

  final String title;
  final String value;
  final Color cardColor;
  final Color? valueColor;
  final IconData? icon;
  final Border? border;

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
        border: border,
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
                .copyWith(color: valueColor ?? AppColors.kPrimaryColor),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
