import 'package:flutter/material.dart';
import 'package:siters_app/utils/reus_widgtes.dart';
import 'package:siters_app/ui/pages/offre/componenets/offre_body_contents.dart';
import 'package:siters_app/ui/pages/offre/componenets/offre_header.dart';

class OffreViews extends StatelessWidget {
  const OffreViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: reusAllPading(
         child: SingleChildScrollView(
           physics: BouncingScrollPhysics(),
           scrollDirection: Axis.vertical,
           child: SafeArea(
             child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const OffreHeaderScetion(),

                   const SizedBox(height: 20.0,),

                   OffreBodySection()
                 ]),
           ),
         ),
       ),
    );
  }
}
