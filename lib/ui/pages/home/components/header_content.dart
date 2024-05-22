import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';



class HomeHederContent extends StatelessWidget {
  const HomeHederContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    //  color: Colors.redAccent,
      padding: EdgeInsets.only(
        top: 20,
      left: 10,
        bottom: 0
      ),
      // height: 220,
      width: double.infinity,
      //color: Colors.redAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Row(
            children: [
              Expanded(
                child: FadeInLeft(
                  child: Text("Baby-care de confiance près de chez vous..",
                    style: Theme.of(context).textTheme.headlineMedium
                  ),
                ),
              ),
              FadeInRight(child: Image.asset("assets/images/log.png",width: 100,))
            ],
          ),
          
          
          
          
          
          
          
          // FadeInLeft(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       reuText(
          //         text: " Economique pour les familles",
          //         style: TextStyle(fontSize: 16,color: ColorsApp().cblack),
          //       ),
          //       const SizedBox(height: 04.0,),
          //       reuText(text: " Sécurisant pour les baby-sitters",
          //         style: TextStyle(fontSize: 16,color: ColorsApp().cblack),
          //       ),
          //       const SizedBox(height: 04.0,),
          //       reuText(text: " Géré par des professionnels",
          //         style: TextStyle(fontSize: 16,color: ColorsApp().cblack),
          //       ),
          //     ],
          //   ),
          // ),


        ],
      ),
    );
  }
}
