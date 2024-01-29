import 'package:flutter/material.dart';

enum PageType { home, transaction, profile }

extension PageItem on PageType {
  Icon get icon {
    switch (this) {
      case PageType.home:
        return Icon(Icons.home_filled, size: 32);
      case PageType.transaction:
        return Icon(Icons.monetization_on_rounded, size: 32);
      case PageType.profile:
        return Icon(Icons.person, size: 32);
    }
  }

  String get label {
    switch (this) {
      case PageType.home:
        return "Home";
      case PageType.transaction:
        return "Transaction";
      case PageType.profile:
        return "Profile";
    }
  }
}
