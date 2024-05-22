import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  bool isvisibalpswd = true;
  IconData sufixicon = CupertinoIcons.eye_fill;


void ChangePasswordVisibility(){
  isvisibalpswd = !isvisibalpswd;
  sufixicon = isvisibalpswd
   ? CupertinoIcons.eye_fill
      : CupertinoIcons.eye_slash_fill;
  emit(ChangePasswordVisibilityState());
}




}
