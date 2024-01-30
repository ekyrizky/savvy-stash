import 'package:flutter/material.dart';
import 'package:savvy_stash/presentation/components/molecules/balance_card_molecule.dart';
import 'package:savvy_stash/presentation/components/molecules/calendar_molecule.dart';
import 'package:savvy_stash/presentation/components/molecules/profile_header_molecule.dart';
import 'package:savvy_stash/presentation/components/organisms/account_organism.dart';
import 'package:savvy_stash/presentation/components/organisms/transaction_card_organism.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              ProfileHeaderMolecule(),
              SizedBox(height: 32),
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
              SizedBox(height: 20),
              BalanceCardMolecule(),
              SizedBox(height: 20),
              AccountOrganism(
                onClick: () {
                  print('add account click');
                },
              ),
              SizedBox(height: 20),
              TransactionCardOrganism(
                title: 'Spending Categories',
                actionText: 'See All',
                onActionClick: () {
                  print('see all spending click');
                },
              ),
              SizedBox(height: 20),
              TransactionCardOrganism(
                title: 'Recent Transactions',
                actionText: 'See All',
                onActionClick: () {
                  print('see all transaction click');
                },
              ),
              SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}
