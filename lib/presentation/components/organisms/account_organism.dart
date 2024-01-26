import 'package:flutter/material.dart';
import 'package:savvy_stash/presentation/components/atoms/section_title_atom.dart';
import 'package:savvy_stash/presentation/components/molecules/account_card_molecule.dart';

class AccountOrganism extends StatelessWidget {
  const AccountOrganism({super.key, required this.onClick});

  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitleAtom(title: 'Account'),
        const SizedBox(height: 4),
        AccountCardMolecule(onClick: onClick)
      ],
    );
  }
}
