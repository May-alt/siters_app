import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:siters_app/ui/pages/conversation/conversation_view.dart';
import 'package:siters_app/ui/pages/home/home_views.dart';
import 'package:siters_app/ui/pages/offre/offre_views.dart';
import 'package:siters_app/ui/pages/settings/settings_views.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());


  static AppCubit get(context) => BlocProvider.of(context);

    int currentIndex = 0;

  List Screens = [
    HomeViews(),
    OffreViews(),
    ConversationViews(),
    SettingViews(),

  ];

  void ChangeAppNavigationBar(index){
    currentIndex = index;
    emit(ChangeAppNavigationBarState());
  }

 //App Theme Mode
 var isDark = false;

  void ChangeAppThemeMode(){
    isDark =! isDark;
    emit(ChangeAppThemeModeState());
  }

}
