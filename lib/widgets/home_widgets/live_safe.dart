import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:women_safety_app/widgets/home_widgets/livesafe/hospitalcard.dart';
import 'package:women_safety_app/widgets/home_widgets/livesafe/pharmacycard.dart';
import 'package:women_safety_app/widgets/home_widgets/livesafe/policestationcard.dart';
import 'package:women_safety_app/widgets/home_widgets/livesafe/recreationcenters.dart';
import 'package:women_safety_app/widgets/home_widgets/livesafe/restaurantcard.dart';

class LiveSafe extends StatelessWidget {
  const LiveSafe({super.key});
  //this openMap function is passed to every livesafe pages
  static Future<void> openMap(String location) async {
    String? googleUrl = "https://www.google.com/maps/search/$location";
    final Uri _url = Uri.parse(googleUrl);
    try {
      launchUrl(_url);
    } catch (e) {
      Fluttertoast.showToast(msg: "Something went wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PoliceStationCard(onMapFunction: openMap),
          SizedBox(
            width: 10,
          ),
          HospitalCard(onMapFunction: openMap),
          SizedBox(
            width: 20,
          ),
          PharmacyCard(onMapFunction: openMap),
          SizedBox(
            width: 10,
          ),
          RecreationCenterCard(onMapFunction: openMap),
          SizedBox(
            width: 10,
          ),
          RestaurantCard(onMapFunction: openMap),
        ],
      ),
    );
  }
}
