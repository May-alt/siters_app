import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:siters_app/models/offre_models.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:siters_app/utils/reus_widgtes.dart';
import 'package:siters_app/ui/pages/offre_detailles/offre_detailles.dart';


class OffreBodySection extends StatelessWidget {
  const OffreBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: 10.0,),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: offerModels.length,
      itemBuilder: (context, index) => FadeInUp(
       child: InkWell(
         onTap: () {
           return NavToAotherPage(context, OffreDetailleViews(
           contentPost_detailles:offerModels[index].contentPost ,
             date_detailles:offerModels[index].date ,
             imgPost_detailles: offerModels[index].imgPost,
             title_detailles:offerModels[index].titlePost ,
             username_detailles:offerModels[index].username ,
           ));
         },

         child: Container(
           padding: EdgeInsets.all(10.0),
           // height: 300,
           width: double.infinity,
           decoration: BoxDecoration(
               color: ColorsApp().cwhite,

               boxShadow: [
                 BoxShadow(
                     offset: Offset(0, 2),
                     color: ColorsApp().cgrey,
                     blurRadius: 2,
                 )],
               borderRadius: BorderRadius.circular(16)
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   CircleAvatar(radius: 25,backgroundImage: AssetImage("${offerModels[index].userImg}")),
                  const SizedBox(width: 06.0,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("${offerModels[index].username}",
                         style: Theme.of(context).textTheme.titleMedium,
                       ),
                       Text("${offerModels[index].date}",
                         style: Theme.of(context).textTheme.titleMedium,
                       ),
                     ],
                   ),


                 ],
               ),
               const SizedBox(height: 12.0,),
               Text("${offerModels[index].titlePost}",
                 style: TextStyle(color: ColorsApp().cblack,fontWeight: FontWeight.bold,fontSize: 16),
               ),
               const SizedBox(height: 12.0,),
               Container(
                 height: 100,
                 decoration: BoxDecoration(
                     image: DecorationImage(
                         image: AssetImage("${offerModels[index].imgPost}"),
                         fit: BoxFit.cover
                     )
                 ),
               ),

               const SizedBox(height: 10.0,),
               Text("${offerModels[index].contentPost}",
                 maxLines: 3,
                 overflow: TextOverflow.ellipsis,
                 style: Theme.of(context).textTheme.titleMedium
               ),


             ],
           ),
         ),
       ),
     ),
    );
  }
}
