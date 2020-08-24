import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book/Screens/ForgotPassword.dart';
import 'package:recipe_book/Screens/HomePage.dart';
import 'package:recipe_book/Screens/SignupPage.dart';

class LoginPage extends StatefulWidget {
  static String id = 'LoginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController _emailAdressController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background.png',
              ),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Welcome to',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width * 0.05),
                        ),
                        Text(
                          'Recipe Book',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.08,
                          ),
                        ),
                      ],
                    ),
                    Image(
                      image: AssetImage('assets/images/Logo.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: _formkey,
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0x80FFFFFF),
                        ),
                        child: TextFormField(
                          controller: _emailAdressController,
                          autocorrect: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            //  icon: Icon(Icons.email),
                            labelText: 'Email',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0x80FFFFFF),
                        ),
                        child: TextFormField(
                          controller: _passwordController,
                          autocorrect: true,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          onPressed: () async {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => HomePage()));

                            if (_formkey.currentState
                                .validate()) {
                              var result = (await FirebaseAuth
                                  .instance
                                  .signInWithEmailAndPassword(
                                  email:
                                  _emailAdressController
                                      .text,
                                  password:
                                  _passwordController
                                      .text))
                                  .user
                                  .uid;

                              if (result != null) {
                                // pushReplacement

                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomePage()),
                                );
                              }
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Color(0xff34A853),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Login With ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width * 0.04),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xff3B5999),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: Image(
                                image: AssetImage('assets/images/f.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffFFFFFF),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: Image(
                                image: AssetImage('assets/images/google.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'or',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width * 0.04),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xff34A853)),
                        width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05),
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
