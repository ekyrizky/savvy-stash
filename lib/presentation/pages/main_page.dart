import 'package:flutter/cupertino.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/app/utils/page_type.dart';
import 'package:savvy_stash/presentation/pages/custom_page.dart';
import 'package:savvy_stash/presentation/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: AppColors.kPrimaryColor,
        items: PageType.values
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
            .toList(),
        inactiveColor: AppColors.kGrayColor,
        activeColor: AppColors.kSecondaryColor,
      ),
      tabBuilder: (context, index) {
        final type = PageType.values[index];
        switch (type) {
          case PageType.home:
            return HomePage();
          case PageType.transaction:
            return CustomPage(label: 'Transaction');
          case PageType.profile:
            return CustomPage(label: 'Profile');
        }
      },
    );
  }
}
