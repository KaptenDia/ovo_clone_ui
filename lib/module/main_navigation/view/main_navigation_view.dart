import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo_clone_ui/core.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: const [
            HomeView(),
            FinanceView(),
            InboxView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 2,
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
            selectedItemColor: purple,
            selectedLabelStyle: primaryTextStyle.copyWith(fontSize: 14),
            currentIndex: controller.selectedIndex,
            onTap: (newIndex) => controller.updateIndex(newIndex),
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(activeRpSvg),
                icon: SvgPicture.asset(rpSvg),
                label: "Finance",
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(activeProfileSvg),
                icon: SvgPicture.asset(profileSvg),
                label: "User",
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: whiteColor,
          elevation: 0.5,
          onPressed: () {},
          child: Column(
            children: [
              SvgPicture.asset(qrisSvg),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
