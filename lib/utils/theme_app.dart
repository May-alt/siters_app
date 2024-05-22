import 'package:flutter/material.dart';
import 'package:siters_app/utils/colors_app.dart';



class AppTheme{


  ThemeData ligthTheme  = ThemeData(
    primarySwatch: Colors.teal,
    scaffoldBackgroundColor: ColorsApp().cBackgroundLigthApp,

    //AppBar
    appBarTheme: AppBarTheme(
        backgroundColor: ColorsApp().cBackgroundLigthApp,
        elevation:0.0,
        iconTheme: IconThemeData(
          color:  ColorsApp().cblack,
          size: 20,
        ),
        titleSpacing: 20,
        titleTextStyle: TextStyle(color:ColorsApp().cblack,fontSize: 16)
    ),
    textTheme: TextTheme(
      /// | NAME           | SIZE |  WEIGHT |  SPACING |             |
      /// | headlineMedium | 34.0 | regular |  0.25    |             |
      /// | headlineSmall  | 24.0 | regular |  0.0     |             |
      /// | titleLarge     | 20.0 | medium  |  0.15    |             |
      /// | titleSmall     | 14.0 | medium  |  0.1     |             |
      /// | titleMedium    | 16.0 | regular |  0.15    |             |
      /// | bodyLarge      | 16.0 | regular |  0.5     |             |
      /// | bodyMedium     | 14.0 | regular |  0.25    |             |
      /// | bodySmall      | 12.0 | regular |  0.4     |             |
      /// | labelLarge     | 14.0 | medium  |  1.25    |             |
      /// | labelSmall     | 10.0 | regular |  1.5     |             |

      //************************************************

      ///For text de font size qui change pas
      titleMedium: TextStyle(fontSize: 15,color: ColorsApp().cblack,letterSpacing: 0.0),//bodytext1
      headlineSmall: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorsApp().cblack),//headline5/title carouselSlider
      /// Text Style ui changer avec le changement de  theme
     //   //For Title in the Home Page
      headlineMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.w600,color: ColorsApp().cblack,),//=>headLine4
      //  For Authentification TextBtn
      titleSmall: TextStyle(fontSize: 15,color:  ColorsApp().cblack,fontWeight: FontWeight.bold),//  bodyText2:
      bodyLarge: TextStyle(fontSize: 16,color: ColorsApp().cblack,letterSpacing: 0.0), //=> subTitle1
      bodyMedium: TextStyle(fontSize: 14,color: ColorsApp().cblack,),//  subtitle2:


    ),
  );
  
//// Dark Theme
  ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.teal,
    scaffoldBackgroundColor: ColorsApp().cBackgroundDarkApp,

    appBarTheme: AppBarTheme(
        backgroundColor: ColorsApp().cBackgroundDarkApp,
        elevation:0.0,
        iconTheme: IconThemeData(
         // color:  ColorsApp().cwhite,
          color:  Colors.white,
          size: 20,
        ),
        titleSpacing: 20,
        titleTextStyle: TextStyle(color:ColorsApp().cwhite,fontSize: 16)
    ),

    textTheme: TextTheme(
      /// For text a  font size qui change pas
      titleMedium: TextStyle(fontSize: 15,color: ColorsApp().cblack,letterSpacing: 0.0),
       headlineSmall: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorsApp().cblack),//title carouselSlider
       /// Text Style ui changer avec le changement de  theme
      //For Title in the Home Page
      headlineMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.w600,color: ColorsApp().cwhite,),
      //For Authentification TextBtn
      titleSmall: TextStyle(fontSize: 15,color:  ColorsApp().cwhite,fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 16,color: ColorsApp().cwhite),
      bodyMedium: TextStyle(fontSize: 14,color: ColorsApp().cwhite,),
    ),


  );


}
