import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:siters_app/data/cubit/app_cubit.dart';
import 'package:siters_app/ui/pages/settings/componenets/setting_header_section.dart';
import 'package:siters_app/utils/reus_widgtes.dart';
import 'package:siters_app/ui/pages/a_propos_nous/propos_nous.dart';
import 'package:siters_app/ui/pages/notifications/notification_views.dart';
import 'package:siters_app/utils/colors_app.dart';





class SettingViews extends StatelessWidget {
  const SettingViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
         child: SingleChildScrollView(
           child: Column(
             children: [
              const SettingHeaderSection(),
               reusDivider(),
               reusAllPading(
                 child:BlocConsumer<AppCubit,AppState>(
                   listener: (context, state) {},
                   builder: (context, state) {
                     return FadeInUp(
                       child: Column(
                         children: [



                           reusListTile(
                             context: context,
                             onTap: () {
                               AppCubit.get(context).ChangeAppThemeMode();
                             },
                             title: "Mode sombre",
                             leadingIcon: Icons.mode_night_outlined,
                           ),

                           reusListTile(
                             context: context,
                             onTap: () {
                               NavToAotherPage(context, NotificationViews());
                             },
                             leadingIcon: CupertinoIcons.bell_circle,
                             title: "Notifications",
                           ),


                           reusListTile(
                             context: context,
                             onTap: () {
                               NavToAotherPage(context, AproposNousViews());
                             },
                             leadingIcon: CupertinoIcons.news,
                             title: "A Propos de nous",

                           ),
                           //   reusDivider(),


                           reusListTile(
                             context: context,
                             onTap: () {
                               showDialog(
                                 context: context,
                                 builder: (context) {
                                   return AlertDialog(
                                     title: Text("vous déconnecter de votre compte ?"),
                                     backgroundColor: ColorsApp().cblue,
                                     actions: [

                                       TextButton(
                                           onPressed: () {
                                             Navigator.of(context).pop();
                                           },
                                           child: Text("Annuler".toUpperCase(),
                                             style: TextStyle(color: ColorsApp().cblack),
                                           )
                                       ),
                                       TextButton(
                                           onPressed: () {},
                                           child: Text("Se déonnecter".toUpperCase(),
                                             style: TextStyle(color: ColorsApp().cblack),
                                           )
                                       ),
                                     ],
                                   );
                                 },
                               );
                             },
                             leadingIcon: CupertinoIcons.lock_circle,
                             title: "Déconnexion",
                           ),
                         ],
                       ),
                     );
                   },
                 ),


               )
             ],
           ),
         ),

      ),
    );
  }
}
