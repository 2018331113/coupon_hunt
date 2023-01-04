import 'package:flutter/material.dart';
import '../config/routes.dart';

class CouponDBriefPage extends StatelessWidget {
  const CouponDBriefPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5D654),
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
          Image.asset(
            'assets/product_logo1.png',
            alignment: Alignment.center,
            height: 180,
            width: 200,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Ready for\nDouble Fun?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Campus Martius Park- Detroit",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
                "Visit Campus Martius Park in Detroit and get surprising offers. To avail the offers you have to find them through virtual Reality! ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
          ),
          SizedBox(
            height: 65,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Routes.rCouponDirection);
            },
            child: Text("Hunt this Coupon Now",
                style: TextStyle(
                  color: Color(0xffD5D654),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ],
      ),
    );
  }
}
