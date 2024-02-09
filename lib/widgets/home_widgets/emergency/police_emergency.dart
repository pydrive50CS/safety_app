import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class PoliceEmergencyWidget extends StatelessWidget {
  const PoliceEmergencyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //this padding exists inside the Emergency widget container thus is from the emergency container not the screen
    return Padding(
      padding: EdgeInsets.only(left: 5, bottom: 5),
      child: InkWell(
        onTap: () async {
          await FlutterPhoneDirectCaller.callNumber("00000000000");
        },
        child: Card(
          elevation: 10,
          shadowColor: Colors.purple,
          color: Color.fromRGBO(248, 131, 121, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          /*height and width property of container has no effect.
           By default, the Card widget constrains its child to match its own dimensions and cannot go past max values of card.
           Here if the parent widget ListView is removed container automatically occupies all the space on top of card and ignores the radius
           properties of the card*/
          child: Container(
            //also defining the color of conatiner will override the card color because container is on top of card
            width: MediaQuery.of(context).size.width * 0.7,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Colors.pink,
                  Color.fromRGBO(252, 108, 133, 1),
                  Color.fromRGBO(248, 131, 121, 1),
                  //Colors.transparent => the card being the parent widget shows parent color: white by default
                ])),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 5),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor:
                        Color.fromRGBO(193, 84, 193, 1).withOpacity(0.2),
                    child: Image.asset("assets/police.png"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Police',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '100',
                            style: TextStyle(
                              color: Colors.red[300],
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
