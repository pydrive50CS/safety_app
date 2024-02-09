import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SafeHome extends StatelessWidget {
  const SafeHome({super.key});
  showModelSafeHome(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromRGBO(252, 108, 133, 1),
          child: Card(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => showModelSafeHome(context),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              color: Color.fromRGBO(252, 108, 133, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Send Location",
                          style: GoogleFonts.belleza(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/sendlocation.jpg"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
