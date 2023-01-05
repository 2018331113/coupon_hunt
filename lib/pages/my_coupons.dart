import 'package:coupon_hunt/constants/app_constants.dart';
import 'package:coupon_hunt/widgets/coupon_item.dart';
import 'package:coupon_hunt/widgets/ticket_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/carousal_widget.dart';

class MyCouponPage extends StatelessWidget {
  MyCouponPage({
    Key? key,
  }) : super(key: key);

  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return CouponStrip();
        },
      ),
    );
  }
}

class CouponStrip extends StatelessWidget {
  const CouponStrip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Stack(
        children: [
          CouponShape(),
          Positioned(
            left: 30,
            top: 10,
            bottom: 10,
            right: 30,
            child: LayoutBuilder(builder: (context, constraints) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 80,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/product_logo2.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Dash(
                    direction: Axis.vertical,
                    length: constraints.maxHeight,
                    dashColor: Colors.white,
                    dashBorderRadius: 5,
                    dashGap: 5,
                    dashThickness: 2.5,
                    dashLength: 8,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "15% off",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text("Country Fresh- Detroit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                      Spacer(),
                      Text("Dec 1 - Dec 31",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  CategoryBox({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: isSelected ? kSecondaryColor : kAscentColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white : kPrimaryColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.category_rounded,
                    color: isSelected ? Colors.black : Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Category ${index + 1}",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.black : Colors.white,
                        fontSize: 12,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
