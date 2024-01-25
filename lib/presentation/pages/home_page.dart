import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/presentation/components/molecules/calendar_molecule.dart';
import 'package:savvy_stash/presentation/components/molecules/profile_header_molecule.dart';

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
          ],
        ),
      ),
    );
  }
}
