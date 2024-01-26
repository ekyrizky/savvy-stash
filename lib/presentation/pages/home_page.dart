import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/presentation/components/atoms/transaction_atom.dart';
import 'package:savvy_stash/presentation/components/molecules/balance_card_molecule.dart';
import 'package:savvy_stash/presentation/components/molecules/calendar_molecule.dart';
import 'package:savvy_stash/presentation/components/molecules/profile_header_molecule.dart';
import 'package:savvy_stash/presentation/components/molecules/transaction_item_molecule.dart';
import 'package:savvy_stash/presentation/components/organisms/account_organism.dart';
import 'package:savvy_stash/presentation/components/organisms/transaction_card_organism.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            ProfileHeaderMolecule(),
            CalendarMolecule(
              onCalendarClick: () {
                print('calendar click');
              },
              onNext: () {
                print('next click');
              },
              onPrev: () {
                print('prev click');
              },
            ),
            BalanceCardMolecule(),
            AccountOrganism(
              onClick: () {
                print('add account click');
              },
            ),
            TransactionCardOrganism(),
          ],
        ),
      ),
    );
  }
}
