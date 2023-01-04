import 'package:coupon_hunt/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/routes.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key, required this.changeIndex});
  final Function(int) changeIndex;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final pad = (((width - 40) * 0.2) - 28) * 0.5;
    final translate = 2 * pad + 27;
    return Container(
      height: 70,
      color: kPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5.0, left: (pad - 6)),
              child: AnimatedContainer(
                height: 2,
                width: 36,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                duration: const Duration(milliseconds: 500),
                transform: Matrix4.translationValues(
                    _selectedIndex * (translate), 0.0, 0.0),
                curve: Curves.easeOut,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pad),
                  child: BottomNavBarItem(
                    icon: "home_button.svg",
                    label: "Home",
                    isActive: (_selectedIndex == 0) ? true : false,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                       widget.changeIndex(_selectedIndex);

                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pad),
                  child: BottomNavBarItem(
                    icon: "search_button.svg",
                    label: "Search",
                    isActive: (_selectedIndex == 1) ? true : false,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                       widget.changeIndex(_selectedIndex);

                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pad),
                  child: BottomNavBarItem(
                    icon: "magic_pen_button.svg",
                    label: "Hunt",
                    isActive: (_selectedIndex == 2) ? true : false,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                        widget.changeIndex(_selectedIndex);

                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pad),
                  child: BottomNavBarItem(
                    icon: "ticket_button.svg",
                    label: "Coupons",
                    isActive: (_selectedIndex == 3) ? true : false,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 3;
                        widget.changeIndex(_selectedIndex);

                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pad),
                  child: BottomNavBarItem(
                    icon: "profile_button.svg",
                    label: "Profile",
                    isActive: (_selectedIndex == 4) ? true : false,
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                        widget.changeIndex(_selectedIndex);
                        Navigator.pushNamed(context, Routes.rProfile);

                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    Key? key,
    required this.isActive,
    required this.label,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final _activeColor = kSecondaryColor;
  final _inactiveColor = const Color(0xffFFFFff);
  final bool isActive;
  final String label;
  final String icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: SvgPicture.asset(
              (isActive) ? "assets/active_$icon" : "assets/$icon",
              height: 24,
              width: 24,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: isActive ? _activeColor : _inactiveColor,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}































































// import 'package:coupon_hunt/pages/home.dart';
// import 'package:coupon_hunt/widgets/screen_wrapper.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// class CustomBottomNavbar extends StatefulWidget {
//   const CustomBottomNavbar({super.key});

//   @override
//   State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
// }

// class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
//   PersistentTabController _controller =
//       PersistentTabController(initialIndex: 0);

//   List<PersistentBottomNavBarItem> _navBarsItems() {
//     return [
//       PersistentBottomNavBarItem(
//         icon: SvgPicture.asset(
//           "assets/active_home_button.svg",
//           height: 24,
//           width: 24,
//         ),
//         inactiveIcon: SvgPicture.asset(
//           "assets/home_button.svg",
//           height: 24,
//           width: 24,
//         ),
//         title: 'Home',
//       ),
//       PersistentBottomNavBarItem(
//         icon: SvgPicture.asset(
//           "assets/active_search_button.svg",
//           height: 24,
//           width: 24,
//         ),
//         inactiveIcon: SvgPicture.asset(
//           "assets/search_button.svg",
//           height: 24,
//           width: 24,
//         ),
//         title: 'Search',
//       ),
//       PersistentBottomNavBarItem(
//         icon: SvgPicture.asset(
//           "assets/active_magic_pen_button.svg",
//           height: 24,
//           width: 24,
//         ),
//         inactiveIcon: SvgPicture.asset(
//           "assets/magic_pen_button.svg",
//           height: 24,
//           width: 24,
//         ),
//         title: 'Favorite',
//       ),
//       PersistentBottomNavBarItem(
//         icon: SvgPicture.asset(
//           "assets/active_ticket_button.svg",
//           height: 24,
//           width: 24,
//         ),
//         inactiveIcon: SvgPicture.asset(
//           "assets/ticket_button.svg",
//           height: 24,
//           width: 24,
//         ),
//         title: 'Profile',
//       ),
//       PersistentBottomNavBarItem(
//         icon: SvgPicture.asset(
//           "assets/profile_button.svg",
//           height: 24,
//           width: 24,
//         ),
//         title: 'Profile',
//       ),
//     ];
//   }

//   List<Widget> _buildScreens() {
//     return [
//       HomePage(),
//       HomePage(),
//       HomePage(),
//       HomePage(),
//       HomePage(),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: PersistentTabView(
//         context,
//         controller: _controller,
//         screens: _buildScreens(),
//         items: _navBarsItems(),
//         confineInSafeArea: false,
//         backgroundColor: Colors.white,
//         handleAndroidBackButtonPress: true,
//         resizeToAvoidBottomInset: false,
//         stateManagement: true,
//         hideNavigationBarWhenKeyboardShows: true,
//         decoration: NavBarDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           colorBehindNavBar: Colors.white,
//         ),
//         popAllScreensOnTapOfSelectedTab: true,
//         popActionScreens: PopActionScreensType.all,
//         itemAnimationProperties: ItemAnimationProperties(
//           duration: const Duration(milliseconds: 200),
//           curve: Curves.ease,
//         ),
//         screenTransitionAnimation: ScreenTransitionAnimation(
//           animateTabTransition: true,
//           curve: Curves.ease,
//           duration: const Duration(milliseconds: 200),
//         ),
//         navBarStyle: NavBarStyle.style3,
//       ),
//     );
//   }
// }
