import 'package:flutter/material.dart';
import 'package:savvy_stash/presentation/components/atoms/profile_text_atom.dart';
import 'package:savvy_stash/presentation/components/atoms/rounded_image_atom.dart';

class ProfileHeaderMolecule extends StatelessWidget {
  const ProfileHeaderMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImageAtom(),
        SizedBox(width: 16),
        ProfileTextAtom(),
      ],
    );
  }
}
