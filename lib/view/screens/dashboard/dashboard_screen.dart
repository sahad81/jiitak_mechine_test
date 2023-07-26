import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';
import 'package:jiitak_inc_ui_task/controlls/home_controller.dart';
import 'package:jiitak_inc_ui_task/view/screens/dashboard/widget/bottom_nav_item.dart';
import 'package:jiitak_inc_ui_task/view/screens/homeScreen/home_screen.dart';
import 'package:jiitak_inc_ui_task/view/screens/msg/message_screen.dart';
import 'package:jiitak_inc_ui_task/view/screens/order/order_screen.dart';
import 'package:jiitak_inc_ui_task/view/screens/scanner/scanner_screen.dart';
import 'package:jiitak_inc_ui_task/until/dimensions.dart';
import 'package:jiitak_inc_ui_task/until/images.dart';

import '../profile/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  final int pageIndex;
  DashboardScreen({required this.pageIndex});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController? _pageController;
  int _pageIndex = 0;
  List<Widget>? _screens;

  @override
  void initState() {
    super.initState();

    _pageIndex = widget.pageIndex;

    _pageController = PageController(initialPage: widget.pageIndex);

    _screens = [
       HomeScreen(),
      const OrderScreen(),
      const ScannerScreen(),
      const MessageScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              shape: CircleBorder(),
              elevation: 5,
              backgroundColor: _pageIndex == 2
                  ? Color(0xFFFAAA14)
                  : Theme.of(context).cardColor,
              onPressed: () => _setPage(2),
              child: Image.asset(
                Images.scanner,
                width: 25,
                height: 24,
                color: _pageIndex == 2 ? Colors.white : Colors.black,
              )),
          SizedBox(
            height: 2,
          ),
          Text(
            'スキャナー',
            style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Theme.of(context).cardColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: Row(children: [
            BottomNavItem(
                iconData: CupertinoIcons.search,
                isSelected: _pageIndex == 0,
                onTap: () => _setPage(0)),
            BottomNavItem(
                iconData: Icons.shopping_bag,
                isSelected: _pageIndex == 1,
                onTap: () => _setPage(1)),
            Expanded(child: SizedBox()),
            BottomNavItem(
                iconData: TablerIcons.message_circle,
                isSelected: _pageIndex == 3,
                onTap: () => _setPage(3)),
            BottomNavItem(
                iconData: Icons.person,
                isSelected: _pageIndex == 4,
                onTap: () => _setPage(4)),
          ]),
        ),
      ),
      body: SizedBox(
        child: PageView.builder(
          controller: _pageController,
          itemCount: _screens?.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return _screens?[index];
          },
        ),
      ),
    );
  }

  void _setPage(int pageIndex) {
    Get.find<Homecontroller>().setpage(_pageIndex, pageIndex, _pageController);
    setState(() {
      _pageIndex=pageIndex;
    });
  }
}
