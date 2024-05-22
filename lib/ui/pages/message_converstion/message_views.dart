import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siters_app/models/chat_models.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:siters_app/utils/reus_widgtes.dart';


class MessageViews extends StatelessWidget {

  TextEditingController convrsationController = TextEditingController();

   MessageViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
             CircleAvatar(
               radius: 19,
               backgroundImage: AssetImage("assets/images/prof3.jpg"),
             ),
            const SizedBox(width: 08.0,),
            reuText(text: "Foulen Ben Foulen",
            style: TextStyle(fontSize: 14)
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: reusAllPading(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: chatModels.map((message) {
              return message.sendByMe == false
              ?
              Align(
                alignment: Alignment.topRight,
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Container(
                    margin:const EdgeInsets.only(bottom: 10.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    decoration:
                    BoxDecoration(color: ColorsApp().cblue),
                    child: Text("${message.message}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              )
                  :
              ClipPath(
                clipper: UpperNipMessageClipperTwo(MessageType.receive),
                child: Container(
                  margin:const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  decoration:
                  BoxDecoration(color: ColorsApp().cpink),
                  child: Text("${message.message}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              )

              ;
            }).toList()
          ),
        ),
      ),


      bottomSheet: Container(
        color:ColorsApp().cBackgroundLigthApp, // a faire
        height: 60,
        padding: EdgeInsets.all(10),
        //color: Colors.teal,
        child: Row(
          children: [

            IconButton(
              onPressed: (){},
              icon: Icon(CupertinoIcons.add_circled,color: Colors.blue,),
            ),
            Expanded(
              child: TextFormField(
                //   maxLength: 5,
                controller: convrsationController,
                decoration: InputDecoration(
                  hintText: "message...",
                  hintStyle:TextStyle(color: ColorsApp().cgrey,fontSize: 12),
                  contentPadding: EdgeInsets.all(08.0),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),
              ),
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.send,color: Colors.blue,)
            )
          ],
        ),
      ),
    );

  }



}
