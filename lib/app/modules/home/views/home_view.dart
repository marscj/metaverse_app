import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:metaverse_app/app/modules/home/screen/find/views/find_view.dart';
import 'package:metaverse_app/app/modules/home/screen/my/views/my_view.dart';
import 'package:metaverse_app/app/modules/home/screen/schedule/views/schedule_view.dart';
import 'package:metaverse_app/app/modules/home/screen/study/views/study_view.dart';
import 'package:metaverse_app/app/modules/home/views/home_tab.dart';
import 'package:metaverse_app/common/persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: controller.persistentTabController,
        screens: [StudyView(), ScheduleView(), FindView(), MyView()],
        items: [
          HomeTab('tabs_study'.tr, FontAwesomeIcons.graduationCap),
          HomeTab('tabs_schedule'.tr, FontAwesomeIcons.bookOpen),
          HomeTab('tabs_find'.tr, FontAwesomeIcons.earthAsia),
          HomeTab('tabs_my'.tr, FontAwesomeIcons.user),
        ]
            .map((e) => PersistentBottomNavBarItem(
                  icon: Icon(e.icon),
                  title: e.title,
                  iconSize: 20,
                  textStyle: TextStyle(fontSize: 10),
                  activeColorPrimary: Theme.of(context).colorScheme.primary,
                  inactiveColorPrimary: Colors.grey,
                ))
            .toList(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: false, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        // screenTransitionAnimation: ScreenTransitionAnimation(
        //   // Screen transition animation on change of selected tab.
        //   animateTabTransition: true,
        //   curve: Curves.ease,
        //   duration: Duration(milliseconds: 200),
        // ),
        navBarStyle:
            NavBarStyle.simple, // Choose the nav bar style with this property.
      ),
    );
  }
}
