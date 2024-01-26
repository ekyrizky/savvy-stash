import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/presentation/components/atoms/action_card_atom.dart';
import 'package:savvy_stash/presentation/components/atoms/balance_card_atom.dart';

class AccountCardMolecule extends StatelessWidget {
  const AccountCardMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BalanceCardAtom(
            title: 'Cash',
            value: 'Rp 1.000.000',
            cardColor: Colors.white,
            valueColor: AppColors.kGreenColor,
            icon: Icons.account_balance_wallet,
            border: Border.all(color: AppColors.kSecondaryColor),
          ),
          const SizedBox(width: 8),
          ActionCardAtom(
            text: 'Add',
            icon: Icons.add,
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
