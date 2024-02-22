import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/components/button_google.dart';
import 'package:my_first_flutter_project/components/textfield_1.dart';
import 'package:my_first_flutter_project/components/wide_black_button.dart';
import 'package:my_first_flutter_project/screens/app_page.dart';

class LoginPage extends StatelessWidget{
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: Column(
                children: [
                  const SizedBox(height: 90,),
                  // logo
                  Image.asset('assets/images/_Elecgotchi_3D logo_xs.png'),

                  const SizedBox(height: 30,),
                  // Sign in to Elecgotchi
                  Text(
                    'Sign in to Elecgotchi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 30,),
                  // id textfield
                  TextField_Log_Button(
                      controller: usernameController,
                      hintText: 'Email',
                      obscureText: false,
                  ),

                  const SizedBox(height: 15,),
                  // password textfield
                  TextField_Log_Button(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 30,),
                  // login button
                  WideBlackButton(
                      onTap: () => Navigator.pushNamed(context, '/app_page.dart' ),
                      text: 'Log in'),

                  const SizedBox(height: 30,),
                  // or
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Text(
                        ' or ',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 30,),
                  // continue with google
                  GoogleButton(),

                  const SizedBox(height: 30,),
                  // No acount? Create one
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'No account?',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // 버튼이 눌렸을 때 수행할 작업을 이곳에 작성하세요.
                        },
                        child: Text('Create one',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            ),
                      ),
                      ),
                    ],
                  )


                ]),
          )
      )
    );
  }
}