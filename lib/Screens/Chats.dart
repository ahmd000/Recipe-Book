import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffE5E5E5),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height*0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                            image: AssetImage(
                              'assets/images/back.png',
                            )),
                      ),
                      Text(
                        'Chats',
                        style: TextStyle(
                          color: Color(0xff010205),
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

              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Container(
                height: 30,
                color: Colors.yellow,
              )

            ],
          ),
        ),
      ),
    );
  }
}
