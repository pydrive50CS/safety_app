import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/home_widgets/emergency/consultation_emergency.dart';
import 'package:women_safety_app/widgets/home_widgets/emergency/medical_emergency.dart';
import 'package:women_safety_app/widgets/home_widgets/emergency/police_emergency.dart';

class EmergencyWidget extends StatelessWidget {
  const EmergencyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergencyWidget(),
          MedicalEmergency(),
          ConsultationEmergency(),
        ],
      ),
    );
  }
}
