import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
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
                        'Friends',
                        style: TextStyle(
                          color: Color(0xff010205),
                          fontSize: MediaQuery.of(context).size.width * 0.05,
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
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xffFFFFFF),
                ),
                child: TextFormField(
                  autocorrect: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),

                    labelText: 'Search Friends'
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('My Friends',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color(0xff34A853),

                      fontSize: MediaQuery.of(context).size.width * 0.05
                  ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
