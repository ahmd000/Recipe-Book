import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:recipe_book/Screens/Favourites.dart';
import 'package:recipe_book/Screens/Friends.dart';
import 'package:recipe_book/Screens/Networks.dart';
import 'package:recipe_book/Screens/RecipePages.dart';

import 'Chats.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Welcome David',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff010205),
                            fontSize: MediaQuery.of(context).size.width * 0.05),
                      ),
                    ],
                  ),
                  Image(
                    image: AssetImage('assets/images/avatar.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff0F000000),
                      offset: Offset(2, 5),
                    ),
                  ]),
              height: MediaQuery.of(context).size.height * 0.779,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(

                          //

                          onPressed: () {

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RecipePages()));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff33B4C2D3),
                                      // spreadRadius: 10,
                                      offset: Offset(3, 5))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/recipe.png',
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                                Text(
                                  'Recipe',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                      color: Color(0xff096B91)),
                                )
                              ],
                            ),
                          )),
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Chats()));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff33B4C2D3),
                                      // spreadRadius: 10,
                                      offset: Offset(3, 5))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/chat.png',
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                                Text(
                                  'Chats',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                      color: Color(0xff82C6E6)),
                                )
                              ],
                            ),
                          )),
                      FlatButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Networks()));
        },
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff33B4C2D3),
                                      // spreadRadius: 10,
                                      offset: Offset(3, 5))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/world.png',
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                                Text(
                                  'Networks',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                      color: Color(0xff79C8A6)),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Friends()));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff33B4C2D3),
                                      // spreadRadius: 10,
                                      offset: Offset(3, 5))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/frinds.png',
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                                Text(
                                  'Friends',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                      color: Color(0xff946222)),
                                )
                              ],
                            ),
                          )),
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Favourites()));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff33B4C2D3),
                                      // spreadRadius: 10,
                                      offset: Offset(3, 5))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/fav.png',
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                                Text(
                                  'Favourites',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                      color: Color(0xffFF3B30)),
                                )
                              ],
                            ),
                          )),
                      FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff33B4C2D3),
                                      // spreadRadius: 10,
                                      offset: Offset(3, 5))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/upload.png',
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                                Text(
                                  'Uploads',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                      color: Color(0xffFFBD49)),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/line.png',
                    ),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Notifications',
                        style: TextStyle(
                            color: Color(0xff34A853),
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.05),
                      ),

                      FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff33B4C2D3),
                                      // spreadRadius: 10,
                                      offset: Offset(3, 5))
                                ]),
                            child: Text(
                              'Clear notifications',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.03,
                                  color: Color(0xffB4C2D3)),
                            ),
                          )),

//                      FlatButton(
//
//                        onPressed: (){},
//
//
//
//
//                        child: Container(
//                          decoration: BoxDecoration(
//                            boxShadow: [BoxShadow(
//                                color: Colors.white70,
//                                offset: Offset(0,5),
//
//                            )]
//                          ),
//                          child: Text(
//                            'Clear notifications',
//                            style: TextStyle(
//                                fontSize: MediaQuery.of(context).size.width * 0.03,
//                                color: Color(0xffB4C2D3)),
//                          ),
//                        ),
//                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
