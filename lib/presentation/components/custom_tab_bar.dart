import 'package:flutter/material.dart';
import 'package:savvy_stash/app/theme/colors.dart';
import 'package:savvy_stash/data/models/tab_item.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key, required this.onTabChange});

  final Function(int tabIndex) onTabChange;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  final List<TabItem> _icons = TabItem.tabItems;

  int _selectedTab = 0;

  void onTabPress(int index) {
    if (_selectedTab != index) {
      setState(() {
        _selectedTab = index;
      });
      widget.onTabChange(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.fromLTRB(16, 0, 16, 8),
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: List.generate(_icons.length, (index) {
            TabItem icon = _icons[index];
            return Expanded(
              key: icon.id,
              child: MaterialButton(
                padding: EdgeInsets.all(12),
                child: AnimatedOpacity(
                  opacity: _selectedTab == index ? 1 : 0.5,
                  duration: Duration(milliseconds: 200),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: -6,
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          width: _selectedTab == index ? 24 : 0,
                          height: 3,
                          decoration: BoxDecoration(
                            color: AppColors.kSecondaryColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        height: 24,
                        width: 24,
                        child: Image.asset(_icons[index].icon),
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  onTabPress(index);
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
