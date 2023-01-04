import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../constants/app_constants.dart';
import '../config/routes.dart';

class CouponDirectionPage extends StatefulWidget {
  const CouponDirectionPage({super.key});

  @override
  State<CouponDirectionPage> createState() => _CouponDirectionPageState();
}

class _CouponDirectionPageState extends State<CouponDirectionPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const _source = LatLng(23.8741708413185, 90.40967189465033);
  static const _destination = LatLng(23.874489487263094, 90.4078357729052);

  List<LatLng> polylineCoordinates = [];

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyDRKXoXBmtt_bIUjWNgdJtGfABZBM9WafY",
        PointLatLng(_source.latitude, _source.longitude),
        PointLatLng(_destination.latitude, _destination.longitude));

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  @override
  void initState() {
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Reach the hunting ground"),
        ),

        // key : AIzaSyDRKXoXBmtt_bIUjWNgdJtGfABZBM9WafY
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: GoogleMap(
                    initialCameraPosition:
                        CameraPosition(target: _source, zoom: 11),
                    zoomControlsEnabled: false,
                    compassEnabled: false,
                    polylines: {
                      Polyline(
                        polylineId: PolylineId('route'),
                        points: polylineCoordinates,
                        color: kSecondaryColor,
                        width: 6,
                      )
                    },
                    markers: {
                      Marker(markerId: MarkerId("source"), position: _source),
                      Marker(
                          markerId: MarkerId("destination"),
                          position: _destination)
                    },
                  ),
                  height: 500,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Avatar.png',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 40),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: kSecondaryColor,
                      fixedSize: const Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.rCouponAR);
                    },
                    child: const Text(
                      'Find the Coupon!',
                    ),
                  ),
                )
              ],
            ),
          ),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
