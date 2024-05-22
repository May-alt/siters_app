import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());


  static RegisterCubit get(context) => BlocProvider.of(context);

  //For Form
  TextEditingController nameContoller = TextEditingController();
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

  void RegisterWithEmailAndPassword(String email, String pwd){

  }




}
