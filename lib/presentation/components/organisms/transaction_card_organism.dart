import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/presentation/components/atoms/section_title_atom.dart';
import 'package:savvy_stash/presentation/components/molecules/transaction_item_molecule.dart';

class TransactionCardOrganism extends StatelessWidget {
  const TransactionCardOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitleAtom(
          title: 'Spending Categories',
          actionText: 'See All',
        ),
        SizedBox(height: 4),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.kSecondaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: TransactionItemMolecule(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: TransactionItemMolecule(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: TransactionItemMolecule(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
