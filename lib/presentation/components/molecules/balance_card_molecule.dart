import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/presentation/components/atoms/balance_card_atom.dart';

class BalanceCardMolecule extends StatelessWidget {
  const BalanceCardMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BalanceCardAtom(
          title: 'Income',
          value: 'Rp 500.000',
          cardColor: AppColors.kGreenColor.withOpacity(0.15),
        ),
        const SizedBox(width: 8),
        BalanceCardAtom(
          title: 'Expense',
          value: 'Rp 350.000',
          cardColor: AppColors.kRedColor.withOpacity(0.15),
        ),
      ],
    );
  }
}
