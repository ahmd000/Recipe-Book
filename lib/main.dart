import 'package:flutter/material.dart';
import 'package:recipe_book/Screens/LoginPage.dart';
import 'package:recipe_book/Screens/SignupPage.dart';

void main() {
  runApp(MaterialApp(



      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      showSemanticsDebugger: false,


    home: LoginPage(),
  
  routes: <String, WidgetBuilder>{

    LoginPage.id: (context) => LoginPage(),
    SignUpPage.id: (context) => SignUpPage(),

  }

  ));
}
