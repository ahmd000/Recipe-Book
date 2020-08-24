import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book/Screens/LoginPage.dart';

import 'HomePage.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'SignUpPage';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _formkey = GlobalKey<FormState>();

  TextEditingController _emailAdressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _NameController = TextEditingController();
  TextEditingController _DateOfBirthController = TextEditingController();

  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _cityController = TextEditingController();

//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/signUp.jpg',
              ),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                Container(
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(

                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),


                      Text('Register' , style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),


                Form(
                    key: _formkey,
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0x80FFFFFF),
                      ),
                      child: TextFormField(
                        controller: _NameController,
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          //  icon: Icon(Icons.email),
                          labelText: 'Name',
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
                        controller: _DateOfBirthController,
                        autocorrect: true,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          //  icon: Icon(Icons.email),
                          labelText: 'Date Of Birth',
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
                        controller: _phoneNumberController,
                        autocorrect: true,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          //  icon: Icon(Icons.email),
                          labelText: 'Phone Number ',
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
                        controller: _cityController,
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          //  icon: Icon(Icons.email),
                          labelText: 'City',
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

                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0x80FFFFFF),
                      ),
                      child: TextFormField(
                        controller: _confirmPasswordController,
                        autocorrect: true,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Confirm Password',
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: FlatButton(
                        onPressed: () {
//
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => HomePage()));


                          if (_formkey.currentState.validate()) {
                            if (_passwordController.text ==
                                _confirmPasswordController.text) {
                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                  email:
                                  _emailAdressController.text,
                                  password:
                                  _confirmPasswordController
                                      .text)
                                  // ignore: deprecated_member_use
                                  .then((value) => Firestore
                                  .instance
                                  .collection("users")
                                  .document(value.user.uid)
                                  .setData({


                                'UserName':
                                _NameController.text,
                                'Date Of Birth ':
                                _DateOfBirthController.text,


                                'email':
                                _emailAdressController.text,

                                'country': _cityController.text,

                                'PhoneNumber ': _phoneNumberController.text,



                              })
                                  .then((result) => {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomePage()),
                                ),
                              })
                                  .catchError((err) => print(err)))
                                  .catchError((err) => print(err));
                            }else{

                              _showMaterialDialog();
                            }
                          }


                        },
                        child: Text(
                          'Register',
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
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize:
                              MediaQuery.of(context).size.width * 0.05),
                        ),
                      ),
                    ),



                  ],
                )),


              ],
            ),
          ),
        ),

      ),

    );
  }




  _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Warring "),
          content: new Text("Password does not match"),
          actions: <Widget>[
            FlatButton(
              child: Text('OK!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
  }
}
