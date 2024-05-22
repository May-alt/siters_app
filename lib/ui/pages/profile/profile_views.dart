import 'package:flutter/material.dart';
import 'package:siters_app/utils/reus_widgtes.dart';
import 'package:siters_app/utils/colors_app.dart';

class ProfileViews extends StatefulWidget {
  const ProfileViews({super.key});

  @override
  State<ProfileViews> createState() => _ProfileViewsState();
}

class _ProfileViewsState extends State<ProfileViews> {
  @override
  Widget build(BuildContext context) {

    const heigthSize = SizedBox(height: 15.0,);
    return Scaffold(
      appBar: AppBar(
      //  backgroundColor: ColorsApp().cwhite,
     //   elevation: 0.0,
        title: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/user.png"),
          radius: 22,
        ),
      ),

      body: SafeArea(
        child: reusAllPading(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               reuText(text: "Information peronnel :",
              // style: Theme.of(context).textTheme.subtitle1,
               ),
                  heigthSize,
                Form(
                    child: Column(
                      children: [
                      reusTextFormFiled(
                          keyboardType: TextInputType.text,
                        hintText: "Civilité"
                      ),
                        heigthSize,

                        reusTextFormFiled(
                            keyboardType: TextInputType.text,
                            hintText: "Quel est votre état civil ?"
                        ),
                        heigthSize,
                        reusTextFormFiled(
                            keyboardType: TextInputType.text,
                            hintText: "Nom"
                        ),
                        heigthSize,
                        reusTextFormFiled(
                            keyboardType: TextInputType.text,
                            hintText: "Prénom"
                        ),
                        heigthSize,
                        reusTextFormFiled(
                            keyboardType: TextInputType.text,
                            hintText: "Adresse email"
                        ),
                        heigthSize,
                        reusTextFormFiled(
                            keyboardType: TextInputType.text,
                            hintText: "Telephone"
                        ),
                        heigthSize,
                        reusTextFormFiled(
                            keyboardType: TextInputType.text,
                            hintText: "Ville"
                        ),

                    ]),
                ),
                  
                ]),
          ),
        ),
      ),
    );
  }
}
