import 'package:coupon_hunt/pages/coupon_breif.dart';
import 'package:coupon_hunt/pages/my_coupons.dart';
import 'package:coupon_hunt/pages/profile.dart';
import 'package:flutter/material.dart';

import '../pages/coupon_dbreif.dart';
import '../widgets/screen_wrapper.dart';
import '../pages/coupon_direction.dart';
import '../pages/coupon_ar.dart';

class Routes {
  static const rHomePage = '/home';
  static const rCouponBrief = '/coupon-brief';
  static const rCouponDBrief = '/coupon-dbrief';
  static const rProfile = '/profile';
  static const rCouponDirection = '/coupon-direction';
  static const rCouponAR = '/coupon-ar';
  static Route<dynamic> genrateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case rHomePage:
        return MaterialPageRoute(builder: (context) => const ScreenWrapper());
      case rCouponBrief:
        return MaterialPageRoute(builder: (context) => const CouponBriefPage());
      case rCouponDBrief:
        return MaterialPageRoute(
            builder: (context) => const CouponDBriefPage());
      case rProfile:
        return MaterialPageRoute(builder: (context) => ProfilePage());
      case rCouponDirection:
        return MaterialPageRoute(
            builder: (context) => const CouponDirectionPage());
      case rCouponAR:
        return MaterialPageRoute(builder: (context) => const CouponAR());
      default:
        return MaterialPageRoute(builder: (context) => const ScreenWrapper());
    }
  }
}
