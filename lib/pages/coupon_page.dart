import 'package:coupon_hunt/constants/app_constants.dart';
import 'package:coupon_hunt/pages/my_coupons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../widgets/ticket_shape.dart';

class CouponPage extends StatelessWidget {
  CouponPage({super.key});
  final ValueNotifier<bool> _valueNotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.cancel_outlined,
          size: 50,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
          ),
          Padding(
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
                            "assets/product_logo3.png",
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
                              "Buy 1 Take 1",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Fresh-Groceries",
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
          ),
          SizedBox(
            height: 40,
          ),
          ValueListenableBuilder(
              valueListenable: _valueNotifier,
              builder: (context, _, __) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        (_valueNotifier.value) ? Colors.white : kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    _valueNotifier.value = !_valueNotifier.value;
                  },
                  child: Text((_valueNotifier.value) ? "Saved" : "Save",
                      style: TextStyle(
                        color:
                            (_valueNotifier.value) ? Colors.red : Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                );
              }),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Text(
              "Scan the QR or use the code to get the discount in the checkout",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          QrImage(
            data: "1234567890",
            version: QrVersions.auto,
            size: 200.0,
            foregroundColor: Colors.white,
            gapless: false,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              "1  2  3  4  5  6  7  8  9",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
