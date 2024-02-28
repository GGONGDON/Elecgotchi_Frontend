import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/components/button_google.dart';
import 'package:my_first_flutter_project/components/textfield_sign.dart';
import 'package:my_first_flutter_project/components/my_text_button.dart';

class LoginPage extends StatelessWidget{
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: Column(
                children: [
                  const SizedBox(height: 70,),
                  // logo
                  Container(
                      child: Image.asset(
                          'assets/images/elecgotchi_logo_sign_3d-removebg-preview.png',
                        width: screenWidth * 0.3,
                        height: screenWidth * 0.3,
                        fit: BoxFit.contain,
                      ),
                  ),

                  const SizedBox(height: 30,),
                  // Sign in to Elecgotchi
                  const Text(
                    'Sign in to Elecgotchi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 30,),
                  // id textfield
                  TextField_Sign_Button(
                      controller: usernameController,
                      hintText: 'Email',
                      obscureText: false,
                  ),

                  const SizedBox(height: 15,),
                  // password textfield
                  TextField_Sign_Button(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 30,),
                  // login button
                  MyTextButton(
                      onTap: () => Navigator.pushNamed(context, '/app_main_page.dart' ),
                      text: 'Log in',
                      height: 45,
                      width: 300,
                      button_color: Colors.black,
                      text_color: Colors.white,
                  ),

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
                  const GoogleButton(),

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
                        child: const Text('Create one',
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
                ]
            ),
          )
      )
    );
  }
}