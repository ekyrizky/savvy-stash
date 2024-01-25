import 'package:flutter/material.dart';
import 'package:savvy_stash/presentation/components/atoms/calendar_atom.dart';
import 'package:savvy_stash/presentation/components/atoms/next_prev_atom.dart';

class CalendarMolecule extends StatelessWidget {
  const CalendarMolecule({
    super.key,
    required this.onCalendarClick,
    required this.onNext,
    required this.onPrev,
  });

  final VoidCallback onCalendarClick;
  final VoidCallback onNext;
  final VoidCallback onPrev;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CalendarAtom(
          onTap: onCalendarClick,
        ),
        NextPrevAtom(onNext: onNext, onPrev: onPrev)
      ],
    );
  }
}
