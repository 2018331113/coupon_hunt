import 'package:coupon_hunt/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.toolbarHeight,
  }) : super(key: key);
  final double toolbarHeight;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
        leadingWidth: 80,
        titleSpacing: 0,
        leading: GestureDetector(
          onTap: () {
            // Do something
          },
          child: Image.asset(
            'assets/Avatar.png',
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Hey, ',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 20,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'YODA!',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Today, 22nd Dec 2022',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
              child: SvgPicture.asset(
                'assets/notification.svg',
                width: 26,
                height: 26,
              ),
            ),
          ),
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
