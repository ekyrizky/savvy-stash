import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/theme/typography.dart';
import 'package:savvy_stash/presentation/components/atoms/transaction_atom.dart';

class TransactionItemMolecule extends StatelessWidget {
  const TransactionItemMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.fastfood,
          size: 32,
          color: AppColors.kPrimaryColor,
        ),
        SizedBox(width: 16),
        Expanded(
          child: TransactionAtom(
            title: 'Food',
            type: 'Cash',
            titleColor: AppColors.kPrimaryColor,
            typeColor: const Color.fromARGB(255, 130, 122, 110),
          ),
        ),
        Text(
          '39%',
          style: AppTypography.bodyLarge
              .copyWith(color: AppColors.kSecondaryColor),
        ),
      ],
    );
  }
}
