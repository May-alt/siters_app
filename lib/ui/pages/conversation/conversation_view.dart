import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:siters_app/ui/pages/message_converstion/message_views.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:siters_app/utils/reus_widgtes.dart';


class ConversationViews extends StatelessWidget {
   ConversationViews({super.key});

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: reusAllPading(



                  child: ListView.separated(
            physics: BouncingScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(
                  height: 10.0,
                  child: reusDivider(),
              ),
              itemCount: 3,
            itemBuilder: (context, index) {
                return FadeIn(
                  child: InkWell(
                    onTap: () {
                      NavToAotherPage(context, MessageViews());
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            //color: ColorsApp().cpink,
                            border: Border.all(color: ColorsApp().cpink),
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                image: AssetImage("assets/images/prof3.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        const SizedBox(width: 10.0,),
                        Expanded(
                          child: reuText(
                              text: "Hello, Are you oky..",
                            style: Theme.of(context).textTheme.bodyMedium
                          ),
                        ),
                        reuText(text: "10.50 Am", style: Theme.of(context).textTheme.bodyLarge
                        ),

                      ],
                    ),
                  ),
                );




                ///Si Non
            },
          ),
      ),

    );
  }
}
