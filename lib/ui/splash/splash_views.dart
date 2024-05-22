import 'dart:async';

import 'package:flutter/material.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:animate_do/animate_do.dart';
import 'package:siters_app/utils/reus_widgtes.dart';
import 'package:siters_app/ui/authentifications/login/login.dart';
import 'package:siters_app/main_lyouts_views.dart';

class SplashViews extends StatefulWidget {
  const SplashViews({Key? key}) : super(key: key);

  @override
  State<SplashViews> createState() => _SplashViewsState();
}

class _SplashViewsState extends State<SplashViews> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
              height: double.infinity,
              decoration:const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("assets/images/bord.jpg"),
                    fit: BoxFit.cover,
                  opacity: 0.5,
                ),
              ),
             child: reusAuthTitle(textColor: ColorsApp().cwhite,fontFamily: "Sevillana"),
            ),

          FadeInUp(
            child:Container(
              height: 250,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    reuText(text: "Welcome To Babe-care \n We keep your little ones safe ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: ColorsApp().cblack,
                            fontSize: 20,
                            fontFamily: "Agbalumo"
                        )
                    ),

                    //   const SizedBox(height: 15.0,),
                    reusBouttom(
                      text: "Skip",
                      gradient: LinearGradient(colors: [
                        ColorsApp().cblue,
                        ColorsApp().cpink,
                      ]),
                      onTap: () {
                        NavToAndRemove(context, MainLyoutsView());
                      },
                    ),
                    // const SizedBox(height: 15.0,),
                    reusBouttom(
                      text: "Get Started",
                      gradient: LinearGradient(colors: [
                        ColorsApp().cpinkFoncy,
                        ColorsApp().cblueFoncy,
                      ]),
                      onTap: () {
                        NavToAndRemove(context, LoginView());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}






















// FadeInLeft(
//                   child: Center(
//                       child: Text("Bambinou , le milleur pour bébé \n en ligne",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: ColorsApp().cwhite,
//                         fontSize: 18,
//
//                       ),
//                       )
//                   ),
//                 ),
//////////////////////////
















// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Text(
// "babysitter",
// style: TextStyle(color: Colors.black, fontSize: 40,fontFamily: "Agbalumo"),
// ),
// Lottie.asset('assets/images/lotties/lottie.json')
// ],
// )
