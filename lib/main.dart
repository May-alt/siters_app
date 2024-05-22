import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:siters_app/data/cubit/app_cubit.dart';
import 'package:siters_app/ui/splash/splash_views.dart';
import 'package:siters_app/utils/theme_app.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return   BlocProvider(
      create: (context) => AppCubit()..ChangeAppThemeMode(),
      child:BlocConsumer<AppCubit,AppState>(
         listener: (context, state) {},
          builder: (context, state) {

            var cubit = AppCubit.get(context);

            return  MaterialApp(
              title: 'Baby_application',
              theme: AppTheme().ligthTheme,
              darkTheme: AppTheme().darkTheme,
              themeMode: cubit.isDark ? ThemeMode.light : ThemeMode.dark,
              debugShowCheckedModeBanner: false,
              home: SplashViews(),
            );
          },

      ),
    );

  }

}

