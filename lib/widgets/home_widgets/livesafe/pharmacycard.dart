import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PharmacyCard extends StatelessWidget {
  const PharmacyCard({super.key, this.onMapFunction});
  final Function? onMapFunction;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            onMapFunction!("pharmacy near me");
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
                  "assets/pharmacy.png",
                ),
              ),
            ),
          ),
        ),
        Text(
          "Pharmacy",
          style: GoogleFonts.belleza(
            fontSize: 20,
            color: Color.fromRGBO(255, 157, 164, 1),
          ),
        )
      ],
    );
  }
}
