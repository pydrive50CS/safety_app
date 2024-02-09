import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecreationCenterCard extends StatelessWidget {
  const RecreationCenterCard({super.key, this.onMapFunction});
  final Function? onMapFunction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              onMapFunction!("recreation centers near me");
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
                ),
                child: Center(
                  child: Image.asset(
                    width: 50,
                    "assets/recreation.png",
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Recreation",
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
