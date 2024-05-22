import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:siters_app/utils/colors_app.dart';


reusDivider() => FadeIn(
  child:   Divider(
    height: 2,
    color: ColorsApp().cgrey,
    indent: 10.0,
  ),
);

//Navigation route reusibal
NavToAndRemove(context, Widget) => Navigator.of(context).pushAndRemoveUntil(
  MaterialPageRoute(
    builder: (context) {
      return Widget;
    },
  ),
      (route) => false,
);
NavAndReplacemnt(context, Widget) => Navigator.of(context).pushReplacement(
  MaterialPageRoute(
    builder: (context) {
      return Widget;
    },
  ),
);

NavToAotherPage(context, Widget) => Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) {
      return Widget;
    },
  ),
);

Widget ReusPaddingOnly({
  required Widget? child,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20.0,right: 20.0),
      child: child,
    );


reusAllPading({
  required Widget? child,
})=>Padding(
  padding: EdgeInsets.all(20),
  child: child,
);

//authentification Part Reusibals

reusHeaderAuth()=> FadeInDown(
  // child: Container(
  //   height: 200,
  //   decoration:const BoxDecoration(
  //     //color: Colors.orange,
  //       image: DecorationImage(image: AssetImage("assets/images/user.png"),
  //           fit: BoxFit.cover
  //       )
  //   ),
  //
  // ),
  child: FadeInDown(child: Lottie.asset("assets/images/lotties/auth.json",height: 250,),),
);



reusRowauth({
  required BuildContext context,
  required String text,required void Function()? onPressed,required String textLink,
})=>Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(text,
        style:Theme.of(context).textTheme.bodyLarge
    ),
    TextButton(
        onPressed: onPressed,
        child: Text(textLink,
            style: Theme.of(context).textTheme.titleSmall
        )
    ),
  ],
);


 reusTextFormFiled({
   String? Function(String?)? validator,
   String? hintText,
    TextEditingController? controller,
   void Function()? suffixPressed,
   required TextInputType? keyboardType,
   IconData? sufIcons,
   IconData? preIcons,
   bool obscureText = false,
})=>TextFormField(
   keyboardType:keyboardType ,
   validator: validator,
   obscureText: obscureText,
   maxLines: 1,
   decoration: InputDecoration(
     hintText: hintText,
     prefixIcon: Icon(
       preIcons,
       color: ColorsApp().cgrey,),
     suffixIcon: IconButton(
       onPressed: suffixPressed,
       icon: Icon(
         sufIcons,
         color: ColorsApp().cgrey,
       ),
     ),
     hintStyle:TextStyle(color: ColorsApp().cgrey,fontSize: 12),
     border: OutlineInputBorder(
       borderSide: BorderSide(color: ColorsApp().cgrey),
     borderRadius: BorderRadius.circular(16)
     ),
     enabledBorder:OutlineInputBorder(
         borderSide: BorderSide(color: ColorsApp().cgrey),
         borderRadius: BorderRadius.circular(16)
     ),
     focusedBorder: OutlineInputBorder(
         borderSide: BorderSide(color: ColorsApp().cgrey),
         borderRadius: BorderRadius.circular(16)
     ),
     errorBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.red),
         borderRadius: BorderRadius.circular(16)
     ),
   ),
   controller: controller,

 );

 reusBouttom({
   void Function()? onTap,
   Gradient? gradient,
   Color? backColor,
   required String text,
 })=>  InkWell(
   onTap:onTap ,

   child: Container(
     color: backColor,
     padding: EdgeInsets.all(08.0),
     height: 45,
     decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(16),
         gradient: gradient
     ),
     child: Center(
       child:  Text(text.toUpperCase(),
         style: TextStyle(
             fontSize: 16,
             color: ColorsApp().cblack ,
             fontWeight: FontWeight.bold
         ),
       ),
     ),
   ),
 );

// app resu

reuText({
  TextStyle? style,
  required String text,
  TextAlign? textAlign,
}) => Text(
  text,
  textAlign:textAlign ,
  style:style,
);

reusAuthTitle({
  Color? textColor,
  String? fontFamily,
}) => FadeInDown(
  child: Text(
      "Babe_Care",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: textColor,
          fontSize: 60,
          letterSpacing: 0.8,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily),
  ),
);

reusListTile({
  required BuildContext context,
void Function()? onTap,
  IconData? leadingIcon,
  required String title,
  // Widget? trailing,
}) => ListTile(
    onTap:onTap,
    leading:Icon(leadingIcon,color: Colors.blue),
    title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge
    ),
    // trailing: trailing
);







