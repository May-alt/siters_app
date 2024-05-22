import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:siters_app/utils/colors_app.dart';


class OffreHeaderScetion extends StatelessWidget {
  const OffreHeaderScetion({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15.0,),
          Text("Consulter les opportunités",
          //style: TextStyle(color: ColorsApp().cblack,fontSize: 18,fontWeight: FontWeight.bold),
            style: Theme.of(context).textTheme.titleSmall,
            //titleSmall
          ),
          const SizedBox(height: 10.0,),
          Text("Offres d'emplois pour lesquuelles vous étres l'un des meilleurs candidats :",
            style: Theme.of(context).textTheme.bodyLarge,
          ),

        ],
      ),
    );
  }
}
