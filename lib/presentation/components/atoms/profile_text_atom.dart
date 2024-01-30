import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';

class ProfileTextAtom extends StatelessWidget {
  const ProfileTextAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, Good Morning!',
          style: AppTypography.titleLarge,
        ),
        Text(
          'Rizky Ananda',
          style: AppTypography.bodySmall
              .copyWith(color: AppColors.kSecondaryColor),
        ),
      ],
    );
  }
}
