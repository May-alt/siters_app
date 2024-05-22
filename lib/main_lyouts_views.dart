import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:siters_app/data/cubit/app_cubit.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:siters_app/ui/pages/notifications/notification_views.dart';
import 'package:siters_app/utils/reus_widgtes.dart';


class MainLyoutsView extends StatelessWidget {
  const MainLyoutsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
        builder: (context, state) {
          var cubit = AppCubit.get(context);

          return Scaffold(

            appBar: AppBar(
              title: reuText(text: "Babe-care",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily: "Sevillana"
                ),
              ),
              actions: [
                IconButton(
                    onPressed: (){
                      NavToAotherPage(context, NotificationViews());
                    },
                    icon: Icon(
                      Icons.notifications_none,
                      )
                )
              ],
            ),

            body:cubit.Screens[cubit.currentIndex],

            bottomNavigationBar: Container(
              margin: EdgeInsets.all(15.0),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue.shade50,
              ),
              child: GNav(
                  tabBorderRadius: 15,
                  tabActiveBorder: Border.all(color: Colors.transparent, width: 1),
                  padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  tabBackgroundColor: Colors.blue.withOpacity(0.2),
                  // navigation bar padding
                  gap: 8,
                  color: ColorsApp().cblack,
                  activeColor: Colors.blue,
                  //activeColor: Colors.red,

                  onTabChange: (value) {
                    cubit.ChangeAppNavigationBar(value);
                  },
                  tabs: [
                    GButton(
                      icon: CupertinoIcons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: CupertinoIcons.square_list,
                      text: 'Emplois',
                    ),
                    GButton(
                      icon: CupertinoIcons.conversation_bubble,
                      text: 'Conversation',
                    ),
                    GButton(
                      icon: CupertinoIcons.settings,
                      text: 'Setting',
                    ),

                  ]),
            ),

          );
        },
        listener:(context, state) { },
    );
  }
}
