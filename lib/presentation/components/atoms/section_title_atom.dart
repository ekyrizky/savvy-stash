import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';

class SectionTitleAtom extends StatelessWidget {
  const SectionTitleAtom({
    super.key,
    required this.title,
    this.actionText,
    this.onClick,
  });

  final String title;
  final String? actionText;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTypography.titleMedium
              .copyWith(color: AppColors.kPrimaryColor),
        ),
        if (actionText != null)
          GestureDetector(
            onTap: onClick,
            child: Text(
              actionText!,
              style: AppTypography.titleSmall
                  .copyWith(color: AppColors.kGrayColor),
            ),
          ),
      ],
    );
  }
}
