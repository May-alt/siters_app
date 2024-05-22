import 'package:flutter/material.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:siters_app/utils/reus_widgtes.dart';
import 'package:lottie/lottie.dart';


class NotificationViews extends StatelessWidget {
  const NotificationViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Notifications"),
      ),
      body: SafeArea(
        child: reusAllPading(
          child: Center(child: Lottie.asset("assets/images/lotties/notif.json")),
        ),
      ),
    );
  }
}
