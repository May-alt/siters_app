import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siters_app/ui/pages/profile/profile_views.dart';
import 'package:siters_app/utils/reus_widgtes.dart';


class SettingHeaderSection extends StatelessWidget {
  const SettingHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
         NavToAotherPage(context, ProfileViews());
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child:  Row(
          children: [
            FadeInLeft(
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/user.png"),
                radius: 50,
              ),
            ),
            const  SizedBox(width: 10.0,),
            FadeInRight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  reuText(
                      text: "Eslam Ben Ahmad",
                      style:Theme.of(context).textTheme.bodyLarge
                  ),
                  const SizedBox(height: 05.0,),
                  reuText(text: "Nounou bebes",
                      style:Theme.of(context).textTheme.bodyLarge
                  ),
                ],
              ),
            )
          ],
        ),
        height: 80, //color: Colors.amberAccent,
      ),
    );
  }
}
