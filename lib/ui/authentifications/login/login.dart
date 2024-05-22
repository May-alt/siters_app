import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:siters_app/main_lyouts_views.dart';
import 'package:siters_app/ui/authentifications/login/cubit/login_cubit.dart';
import 'package:siters_app/utils/colors_app.dart';
import 'package:siters_app/utils/reus_widgtes.dart';
import 'package:siters_app/ui/authentifications/register/register_views.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginState>(
        listener: (context, state) {},
        builder: (context, state) {

          var cubit = LoginCubit.get(context);

          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: ReusPaddingOnly(
                  child:
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        reusHeaderAuth(),

                        const SizedBox(
                          height: 20.0,
                        ),

                        FadeInUp(
                          child: Form(
                            key: cubit.formkey,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  reusTextFormFiled(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: cubit.emailContoller,
                                    hintText: "Foulen@gmail.com",
                                    preIcons: CupertinoIcons.mail,
                                    validator: (value){
                                      if (value == null ||
                                          value.isEmpty ||
                                          !value.contains('@')) {
                                        return " email Is Empty";
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  reusTextFormFiled(
                                    obscureText: cubit.isvisibalpswd,
                                    keyboardType: TextInputType.visiblePassword,
                                    controller: cubit.passwordContoller,
                                    hintText: "12345..",
                                    preIcons: CupertinoIcons.padlock,
                                    suffixPressed: () {
                                       cubit.ChangePasswordVisibility();
                                    },
                                    sufIcons: cubit.sufixicon,
                                    validator: (value)
                                    {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.length < 4) {
                                        return " Password Is Empty";
                                      }
                                      return null;
                                    },
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: TextButton(
                                      child: Text("Forget password !",
                                          style: Theme.of(context).textTheme.bodyMedium
                                      ),

                                      onPressed: () {},
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25.0,
                                  ),

                                  reusBouttom(
                                    text: "login",
                                    gradient: LinearGradient(colors: [
                                      ColorsApp().cpinkFoncy,
                                      ColorsApp().cblueFoncy,
                                    ]),
                                    onTap: () {
                                      if (cubit.formkey.currentState!.validate()) {
                                        NavToAndRemove(context, MainLyoutsView());
                                        // print(emailContoller.text);
                                        // print(passwordContoller.text);
                                      }
                                    },
                                  ),
                                  const SizedBox(height:30,),


                                  reusRowauth(
                                      context: context,
                                      text: "Don't have an account ?",
                                      onPressed: () {
                                        NavAndReplacemnt(context, RegisterViews());
                                      },
                                      textLink: "Sing-Up"),
                                ]),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
