import 'package:flutter/material.dart';
import 'package:savvy_stash/data/models/tab_item.dart';
import 'package:savvy_stash/presentation/components/custom_tab_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Widget _tabBody;

  @override
  void initState() {
    _tabBody = TabItem.tabItems.first.page;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _tabBody,
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomTabBar(onTabChange: (index) {
              setState(() {
                _tabBody = TabItem.tabItems[index].page;
              });
            }),
          ),
        ],
      ),
    );
  }
}
