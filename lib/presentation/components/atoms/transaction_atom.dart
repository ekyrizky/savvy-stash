import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';

class TransactionAtom extends StatelessWidget {
  const TransactionAtom({
    super.key,
    required this.title,
    required this.type,
    this.desc,
    required this.titleColor,
    required this.typeColor,
    this.descColor,
  });

  final String title;
  final String type;
  final String? desc;
  final Color titleColor;
  final Color typeColor;
  final Color? descColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.bodySmall.copyWith(color: titleColor),
        ),
        Text(
          type,
          style: AppTypography.labelLarge.copyWith(color: typeColor),
        ),
        if (desc != null)
          Text(
            desc!,
            style: AppTypography.labelMedium
                .copyWith(color: descColor ?? AppColors.kGrayColor),
          ),
      ],
    );
  }
}
