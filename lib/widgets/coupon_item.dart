import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'carousal_widget.dart';
import 'custom_shape.dart';
import '../config/routes.dart';

class CouponItem extends StatelessWidget {
  const CouponItem({
    Key? key,
    required this.carousalType,
    required this.index,
  }) : super(key: key);

  final CarousalType carousalType;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          if (index % 2 == 0) {
            Navigator.pushNamed(context, Routes.rCouponBrief);
          } else {
            Navigator.pushNamed(context, Routes.rCouponDBrief);
          }
        },
        child: Stack(
          children: [
            Container(
                width: 160,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: (carousalType == CarousalType.categories)
                        ? const Radius.circular(10)
                        : const Radius.circular(20),
                    topRight: (carousalType == CarousalType.categories)
                        ? const Radius.circular(10)
                        : const Radius.circular(20),
                    bottomLeft: const Radius.circular(10),
                    bottomRight: const Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: (carousalType == CarousalType.categories)
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            "Category ${index + 1}",
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                          ),
                        ),
                      )
                    : Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 30.0, right: 5.0, left: 5.0),
                          child: Text(
                            (index % 2 != 0)
                                ? "DOUBLE \nYOUR FUN"
                                : "READY FOR A SPECIAL TREAT?",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.permanentMarker(
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: (index % 2 != 0)
                                    ? Color(0xFFD5D654)
                                    : Color(0xFF084898),
                              ),
                            ),
                          ),
                        ),
                      )),
            (carousalType == CarousalType.categories)
                ? Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Colors.primaries[index],
                    ),
                  )
                : CustomPaint(
                    painter: CustomShape(color: Colors.primaries[index]),
                    size: const Size(160, 120),
                  ),
            Positioned(
              top: 30,
              left: 45,
              child: SvgPicture.asset(
                "assets/image.svg",
                height: 70,
                width: 70,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
