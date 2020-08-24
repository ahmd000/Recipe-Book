import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
                        'Favourites',
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

                height: MediaQuery.of(context).size.height*0.82,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Positioned(
                      top: 12,
                      right: 12,
                      left: 12,
                      bottom: 12,
                      child: Container(
                      ),
                    ),
                    Positioned(
                      left: 30.0,
                      right: 30.0,
                      bottom: 10,
                      child:   Container(
                        alignment: Alignment.bottomCenter,
                        child: FlatButton(
                          onPressed: (){},
                          child: Column(
                            children: <Widget>[
                              Text('Explore more networks',style: TextStyle(
                                  color: Color(0xff34A853),
                                  fontSize: MediaQuery.of(context).size.width * 0.038
                              ),),
                              Image(image: AssetImage('assets/images/line2.png'))
                            ],
                          ),
                        ),
                      ),
                    ),



                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}