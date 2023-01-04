import 'package:coupon_hunt/pages/my_coupons.dart';
import 'package:coupon_hunt/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/search.dart';
import 'custom_appbar.dart';

class ScreenWrapper extends StatefulWidget {
  const ScreenWrapper({super.key});

  @override
  State<ScreenWrapper> createState() => _ScreenWrapperState();
}

class _ScreenWrapperState extends State<ScreenWrapper> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight!),
      bottomNavigationBar: CustomBottomNavBar(
        changeIndex: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children:  [
          HomePage(),
          SearchPage(),
          HomePage(),
          MyCouponPage(),
        ],
      ),
    );
  }
}



// class CustomBottomNavBar extends StatefulWidget {
//   const CustomBottomNavBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// }

// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   int _selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 70,
//       child: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         type: BottomNavigationBarType.fixed,
//         showUnselectedLabels: true,
//         showSelectedLabels: true,
//         unselectedItemColor: Color(0xff828282),
//         selectedItemColor: Color(0xff2073DA),
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               "assets/active_home_button.svg",
//               height: 24,
//               width: 24,
//             ),
//             icon: SvgPicture.asset(
//               "assets/home_button.svg",
//               height: 24,
//               width: 24,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               "assets/active_search_button.svg",
//               height: 24,
//               width: 24,
//             ),
//             icon: SvgPicture.asset(
//               "assets/search_button.svg",
//               height: 24,
//               width: 24,
//             ),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               "assets/active_magic_pen_button.svg",
//               height: 24,
//               width: 24,
//             ),
//             icon: SvgPicture.asset(
//               "assets/magic_pen_button.svg",
//               height: 24,
//               width: 24,
//             ),
//             label: 'Favorite',
//           ),
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               "assets/active_ticket_button.svg",
//               height: 24,
//               width: 24,
//             ),
//             icon: SvgPicture.asset(
//               "assets/ticket_button.svg",
//               height: 24,
//               width: 24,
//             ),
//             label: 'Profile',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               "assets/profile_button.svg",
//               height: 24,
//               width: 24,
//             ),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

