import 'package:coupon_hunt/constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'coupon_item.dart';
import 'custom_shape.dart';

enum CarousalType { deals, categories }

class CarousalWidget extends StatelessWidget {
  const CarousalWidget({
    Key? key,
    required this.title,
    required this.carousalType,
  }) : super(key: key);
  final String title;
  final CarousalType carousalType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor,
                    ),
              ),
              Text(
                "See all",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.white,
                    ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return CouponItem(carousalType: carousalType,index: index,);
            },
          ),
        ),
      ],
    );
  }
}

