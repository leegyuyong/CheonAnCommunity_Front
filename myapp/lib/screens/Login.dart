import 'package:flutter/material.dart';
import 'package:myapp/widgets/input_field.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: EdgeInsets.only(top : 60.0, bottom: 60.0, left: 120.0, right: 120.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3.3,
                height: MediaQuery.of(context).size.height,
                color: Colors.lightBlue[600],
                child: Padding(
                  padding: EdgeInsets.only(top: 85.0, right: 50.0, left: 50.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: <Widget>[

                        SizedBox(height: 60.0,),

                        Container(
                          padding: EdgeInsets.only(
                            top: 5.0,
                            bottom: 5.0
                          ),
                          child: Text(
                            "Go ahead and Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),

                        SizedBox(height: 5.0,),

                        Container(
                          padding: EdgeInsets.only(
                            top: 5.0,
                            bottom: 5.0
                          ),
                          child: Text(
                            "It should only take a couple of minutes to create your account",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        SizedBox(height: 50.0,),

                        FlatButton(
                          color: Colors.lightBlue,
                          onPressed: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)
                              {
                                return new Home();
                              })
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),


              Container(
                padding: EdgeInsets.only(top: 15.0, right: 70.0, left: 70.0, bottom: 10.0),
                child: Column(
                  children: <Widget>[

                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.lightBlue, fontWeight: FontWeight.w600, fontSize: 35.0, fontFamily: 'Merriweather'
                      ),
                    ),
                    const SizedBox(height: 21.0,),

                    InputField(
                      label: "Username",
                      content: "Test"
                    ),
                    SizedBox(height: 20.0,),

                    InputField(
                      label: "Password",
                      content: "**********"
                    ),

                    SizedBox(height: 20.0,),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 170.0,),
                        FlatButton(
                          color: Colors.grey[200],
                          onPressed: (){},
                          child: Text(
                            "Cancel"
                          ),
                        ),

                        SizedBox(width: 20.0,),

                        FlatButton(
                          color: Colors.lightBlue,
                          onPressed: (){},
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],),
        ),
      )
    );
  }
}