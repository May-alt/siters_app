import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:siters_app/ui/authentifications/register/cubit/register_cubit.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:siters_app/utils/reus_widgtes.dart';
import 'package:siters_app/ui/authentifications/login/login.dart';
import 'package:siters_app/main_lyouts_views.dart';
import 'package:lottie/lottie.dart';


class RegisterViews extends StatefulWidget {
  const RegisterViews({super.key});

  @override
  State<RegisterViews> createState() => _RegisterViewsState();
}

class _RegisterViewsState extends State<RegisterViews> {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child:  BlocConsumer<RegisterCubit, RegisterState>(
          builder: (context, state) {
            var cubit = RegisterCubit.get(context);
            return Scaffold(
              body:  SafeArea(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: ReusPaddingOnly(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          reusHeaderAuth(),


                          const SizedBox( height: 20.0,),
                          FadeInUp(
                            child: Form(
                              key: cubit.formkey,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [



                                    reusTextFormFiled(
                                      controller:cubit. nameContoller,
                                      keyboardType: TextInputType.text,
                                      hintText: "Name ",
                                      preIcons: CupertinoIcons.person,
                                      validator: (value) {
                                        if(value==null || value.isEmpty){
                                          return " Your name is Empty";
                                        }
                                      },
                                    ),

                                    const   SizedBox( height: 10.0,),
                                    reusTextFormFiled(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: cubit.emailContoller,
                                      hintText: "Email",
                                      preIcons: CupertinoIcons.mail,
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            !value.contains('@')) {
                                          return " email Is Empty";
                                        }
                                      },
                                    ),

                                    const   SizedBox( height: 10.0,),

                                    reusTextFormFiled(
                                      obscureText: cubit.isvisibalpswd,
                                      keyboardType: TextInputType.visiblePassword,
                                      controller: cubit.passwordContoller,
                                      hintText: "Password",
                                      preIcons: CupertinoIcons.padlock,
                                      suffixPressed: () {
                                        cubit.ChangePasswordVisibility();
                                      },
                                      sufIcons: cubit.sufixicon,
                                      validator: (value) {
                                        if (value == null || value.isEmpty || value.length < 4) {
                                          return " Password Is Empty";
                                        }
                                      },
                                    ),


                                    const   SizedBox( height: 25.0,),

                                    reusBouttom(
                                      text: "Create an account",
                                      gradient: LinearGradient(
                                          colors: [
                                            ColorsApp().cpinkFoncy,
                                            ColorsApp().cblueFoncy,
                                          ]
                                      ),
                                      onTap: (){
                                        if(cubit.formkey.currentState!.validate()){
                                          // print(cubit.nameContoller.text);
                                          // print(cubit.passwordContoller.text);
                                          NavToAndRemove(context, MainLyoutsView());

                                        }
                                      },
                                    ),

                                    const SizedBox(height:30,),
                                    reusRowauth(
                                        context: context,
                                        text: "You have an acount !",
                                        onPressed: (){
                                          NavAndReplacemnt(context, LoginView());
                                        },
                                        textLink: "Sing-In"
                                    )
                                  ]),
                            ),
                          ),



                        ]),
                  ),
                ),
              ),
            );
          },
          listener: (context, state) {},
      ),
    );
  }
}
