import 'package:flutter/material.dart';
import 'package:siters_app/models/home_models.dart';
import 'package:siters_app/utils/reus_widgtes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({super.key});

  //late FixedExtentScrollController controller;

  @override
  Widget build(BuildContext context) {

    return reusAllPading(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          disableCenter: true,
        ),
        items:homeModels.map((content){
          return Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color:content.backColor,
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage("assets/images/cute-baby.png"),
              opacity: 0.6,
              fit: BoxFit.cover
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                reuText(text: "${content.titleText}",
                textAlign: TextAlign.center,
               style: Theme.of(context).textTheme.headlineSmall
                ),
                const SizedBox(height: 15.0,),
                reuText(text: "${content.contentText}",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.titleMedium
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

// ======> 3D card animation
//ListWheelScrollView.useDelegate(
//       itemExtent: 250,
//       controller: controller,
//       physics: const BouncingScrollPhysics(),
//       squeeze: 1.0,//size between child
//       //entre 0 et 0.001 tu peux mettre aussi 0.002 ou 0.003
//       perspective: 0.003,
//       offAxisFraction: 0.2,//t3wija HHHH :p
//       //  diameterRatio: 3, //default 2
//       childDelegate: ListWheelChildBuilderDelegate(
//         childCount: homeModels.length,
//
//         builder: (context, index) {
//
//           return Container(
//               padding: EdgeInsets.all(08.0),
//               margin:const EdgeInsets.symmetric(horizontal: 20),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   color: homeModels[index].backColor,
//                   //image: DecorationImage(image: AssetImage("assets/images/user.png",)),
//                   borderRadius: BorderRadius.circular(20)
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                    child:  Text("${homeModels[index].titleText}",
//                      style: TextStyle(color: ColorsApp().cblack,fontWeight: FontWeight.bold,fontSize: 20),
//                    ),
//                   ),
//                   // Expanded(
//                   //   child: Container(
//                   //     decoration: BoxDecoration(
//                   //         image: DecorationImage(
//                   //             image: AssetImage("assets/images/user.png"),
//                   //             fit: BoxFit.cover
//                   //         )
//                   //     ),
//                   //   ),
//                   // ),
//                   SizedBox(height: 15.0,),
//                   Container(
//                     child: Text("${homeModels[index].contentText}",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(fontSize: 16,color: ColorsApp().cblack,fontWeight: FontWeight.w400 ),
//                     ),
//                   )
//                 ],
//               )
//           );
//         },
//       ),
//     );