import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipePages extends StatefulWidget {
  @override
  _RecipePagesState createState() => _RecipePagesState();
}

class _RecipePagesState extends State<RecipePages> {
  String _PagesValue;

  static const v1 = 'Swipe to search by ingredients';
  static const v2 = 'Swipe to search by recipe';

  List PagesValueType = [v1, v2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//backgroundColor: Colors.deepPurpleAccent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                _PagesValue == v1
                    ? 'assets/images/bg2.png'
                    : 'assets/images/bga.png',
              ),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0x80FFFFFF),
                      ),
                      child: DropdownButton(
                        hint: Text(
                          'Select',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        value: _PagesValue,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        onChanged: (value) {
                          setState(() {
                            _PagesValue = value;
                          });
                        },
                        items: PagesValueType.map((value) {
                          return new DropdownMenuItem(
                            child: new Text(value),
                            value: value,
                          );
                        }).toList(),
                        icon: Icon(
                          Icons.navigate_next,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(020),
                alignment: Alignment.centerLeft,
                child: Text(
                  _PagesValue == v2
                      ? 'Search by Recipe'
                      : 'Search by Ingredients',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xffFFFFFF),
                ),
                child: TextFormField(
                  //     controller: _emailAdressController,
                  autocorrect: true,
                //  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    //  icon: Icon(Icons.email),
                    labelText: _PagesValue == v2
                        ? 'What recipe are you looking for?'
                        : 'What ingredient are you looking for?',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24)),
                    color: Color(0xffFFFFFF)),
                height: MediaQuery.of(context).size.height * 0.685,

              )
            ],
          ),
        ),
      ),
    );
  }
}
