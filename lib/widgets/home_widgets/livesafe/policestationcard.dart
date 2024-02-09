import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoliceStationCard extends StatelessWidget {
  const PoliceStationCard({super.key, this.onMapFunction});
  final Function? onMapFunction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              onMapFunction!("police station near me");
            },
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Image.asset(
                    width: 50,
                    "assets/station.png",
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Police Station",
            style: GoogleFonts.belleza(
              fontSize: 20,
              color: Color.fromRGBO(255, 157, 164, 1),
            ),
          )
        ],
      ),
    );
  }
}
