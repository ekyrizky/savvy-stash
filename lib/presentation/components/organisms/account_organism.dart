import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';
import 'package:savvy_stash/presentation/components/molecules/account_card_molecule.dart';

class AccountOrganism extends StatelessWidget {
  const AccountOrganism({super.key, required this.onClick});

  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Account',
          style: AppTypography.titleMedium
              .copyWith(color: AppColors.kPrimaryColor),
        ),
        const SizedBox(height: 4),
        AccountCardMolecule(onClick: onClick)
      ],
    );
  }
}
