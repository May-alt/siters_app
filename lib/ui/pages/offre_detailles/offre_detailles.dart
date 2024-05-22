import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siters_app/ui/pages/message_converstion/message_views.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:siters_app/utils/reus_widgtes.dart';

class OffreDetailleViews extends StatelessWidget {

  final imgPost_detailles;
  final title_detailles;
  final username_detailles;
  final date_detailles;
  final contentPost_detailles;




  const OffreDetailleViews({
    super.key,
    required this.contentPost_detailles,
    required this.date_detailles,
    required this.imgPost_detailles,
    required this.title_detailles,
    required this.username_detailles
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("${username_detailles}",),
        actions: [
          IconButton(
              onPressed: () {
                NavToAotherPage(context, MessageViews());
              },
              icon: Icon(CupertinoIcons.conversation_bubble)
          )
        ],
      ),


      body: Stack(
        children: [

          Positioned(
            bottom: -70,
            child: Image.asset("assets/images/log.png"),),


          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              // Container(height: 150,
              //  decoration: BoxDecoration(
              //    image: DecorationImage(
              //        image: AssetImage("${imgPost_detailles}"),
              //        fit: BoxFit.cover)
              //  ),
              // ),

              reusAllPading(
                  child: FadeInUp(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20.0,),
                        reuText(text: "${title_detailles}",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                        const SizedBox(height: 08.0,),
                        reuText(text: "${date_detailles}",
                          style: TextStyle(fontSize: 16,),),
                        const SizedBox(height: 10.0,),

                        reuText(text: "${contentPost_detailles}",
                         style: Theme.of(context).textTheme.bodyLarge
                        ),
                      ],),
                  ),
              ),


            ],
          ),
        ],
      ),
      // bottomSheet: Container(
      //   height: 100,
      //   color: Colors.pink,
      // ),
    );
  }
}
