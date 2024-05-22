import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:siters_app/utils/reus_widgtes.dart';

class AproposNousViews extends StatelessWidget {
  const AproposNousViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A prpos de Nous"),
      ),
      body: SafeArea(
          child: reusAllPading(

            child: Center(
              child: FadeInUp(
                child: RichText(
                  textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyLarge,
                        children: [
                          TextSpan(text: "PlatForm de babe sitters \n",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,fontFamily: "Agbalumo")
                          ),

                          TextSpan(
                              text: " Est la première plateforme en "
                                  "Tunisie qui met en contact des parents avec des baby-sitters "
                                  "et des AVS ( auxiliaires de vie sociale et/ou scolaire"
                                  " qualifiées, avec une formation dans le domaine et une expérience,"
                                  "à proximité grâce au système de géolocalisation et sélectionnées après "
                                  "avoir passé un entretien et des tests de babysitting",

                          ),
                        ]),
                ),
              ),
            ),
          ),
      ),
    );
  }
}
