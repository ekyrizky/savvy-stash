import 'package:flutter/material.dart';
import 'package:savvy_stash/presentation/pages/custom_page.dart';
import 'package:savvy_stash/presentation/pages/home_page.dart';

class TabItem {
  TabItem({
    required this.icon,
    required this.page,
  });

  UniqueKey? id = UniqueKey();
  String icon;
  Widget page;

  static List<TabItem> tabItems = [
    TabItem(
      icon: 'assets/ic_home.png',
      page: HomePage(),
    ),
    TabItem(
      icon: 'assets/ic_transaction.png',
      page: CustomPage(label: 'TRANSACTION'),
    ),
    TabItem(
      icon: 'assets/ic_budget.png',
      page: CustomPage(label: 'BUDGET'),
    ),
    TabItem(
      icon: 'assets/ic_profile.png',
      page: CustomPage(label: 'PROFILE'),
    ),
  ];
}
