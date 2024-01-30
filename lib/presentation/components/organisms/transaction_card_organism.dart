import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/presentation/components/atoms/section_title_atom.dart';
import 'package:savvy_stash/presentation/components/molecules/transaction_item_molecule.dart';

class TransactionCardOrganism extends StatelessWidget {
  const TransactionCardOrganism({
    super.key,
    required this.title,
    required this.actionText,
    this.onActionClick,
  });

  final String title;
  final String actionText;
  final VoidCallback? onActionClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitleAtom(
          title: title,
          actionText: actionText,
          onClick: onActionClick,
        ),
        const SizedBox(height: 8),
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
