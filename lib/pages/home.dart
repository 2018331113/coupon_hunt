import 'package:coupon_hunt/widgets/ticket_shape.dart';
import 'package:flutter/material.dart';

import '../widgets/carousal_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            CarousalWidget(title: "Hot Deals", carousalType: CarousalType.deals),
            CarousalWidget(title: "Upcoming Deals", carousalType: CarousalType.deals),
            CarousalWidget(title: "Categories", carousalType: CarousalType.categories),
          ],
        ),
      ),
    );
  }
}
