import 'package:flutter/material.dart';

class Networks extends StatefulWidget {
  @override
  _NetworksState createState() => _NetworksState();
}

class _NetworksState extends State<Networks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height*0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      'Networks',
                      style: TextStyle(
                        color: Color(0xff010205),
                        fontSize: MediaQuery.of(context).size.width * 0.06,
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
             // margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
               boxShadow: [BoxShadow(

                   offset: Offset(2,5),
                 color: Color(0x33B4C2D3),
                 spreadRadius: 5.0

               )],
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffFFFFFF),
              ),
              child: TextFormField(
                //     controller: _emailAdressController,
                autocorrect: true,
                keyboardType: TextInputType.text,

                decoration: InputDecoration(

                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                 //   icon: Icon(Icons.search),
                  labelText:'Search Networks'
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.01,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Networks you joined',
                textAlign: TextAlign.start,
                style: TextStyle(
                color: Color(0xff34A853),

                fontSize: MediaQuery.of(context).size.width * 0.05
              ),),
            ),



            Container(

              height: MediaQuery.of(context).size.height*0.73,
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

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xff34A853),
        disabledElevation: 10.0,
        child: Icon(Icons.add, size: 30,),
      ),
    );
  }
}
