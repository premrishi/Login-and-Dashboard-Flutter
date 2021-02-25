import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/FadeAnimation.dart';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
       width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.purple[300],
              Colors.purple[400],
              Colors.purple[900]
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Login", style: GoogleFonts.varelaRound(color: Colors.white, fontSize: 60),),),
                  SizedBox(height: 10),
                  FadeAnimation(1.3, Text("Welcome", style: GoogleFonts.varelaRound(color: Colors.white, fontSize: 20),),),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70))
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 20,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [BoxShadow(
                                color: Color.fromRGBO(128, 0, 128, .7),
                                blurRadius: 10,
                                offset: Offset(0,10)
                                )]
                            ),
                            child: Column(
                              children: <Widget>[
                                FadeAnimation(1.4, Container(
                                  padding: EdgeInsets.all(10), 
                                   decoration: BoxDecoration(
                                     border: Border(bottom: BorderSide(color: Colors.purpleAccent))
                                   ),
                                   child: TextField(
                                     keyboardType: TextInputType.emailAddress,
                                     decoration: InputDecoration(
                                       hintText: "Registered E-mail",
                                       hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                                       border: InputBorder.none
                                     )
                                   ),
                                ),
                                ),
                                FadeAnimation(1.5, Container(
                                  padding: EdgeInsets.all(10), 
                                   child: TextField(
                                     obscureText: true,
                                     decoration: InputDecoration(
                                       hintText: "Password",
                                       hintStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                                       border: InputBorder.none
                                     )
                                   ),
                                )
                                )
                              ]
                            ),
                          ),
                          SizedBox(height: 40,),
                        FadeAnimation(1.6, Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                                color: Color.fromRGBO(128, 0, 128, .7),
                                blurRadius: 10,
                                offset: Offset(0,10)
                                )],
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.purple[700],
                            ),
                            child: Material(
                            type: MaterialType.transparency,
                            elevation: 6.0,
                            color: Colors.transparent,
                            shadowColor: Colors.grey[50],
                            child: InkWell(
                            splashColor: Colors.white30,
                            onTap: () {
                              print('Tapping Login');
                            },
                          
                          child: Center(
                            child: Text("Login", style: GoogleFonts.varelaRound(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                           ),
                            ),
                        ),
                        ),
                          SizedBox(height: 30,),
                        Container(
                          child: Material(
                            type: MaterialType.transparency,
                            elevation: 6.0,
                            color: Colors.transparent,
                            shadowColor: Colors.grey[50],
                            child: InkWell(
                            splashColor: Colors.grey[400],
                            onTap: () {
                              print('New User? Click this to register');
                            },
                          child: FadeAnimation(1.7, Text("New User? Click this to register", style: GoogleFonts.varelaRound(color: Colors.blueGrey),),),
                            ),
                          ), 
                        ),
                           SizedBox(height: 30,),
                           Container(
                             child: Material(
                            type: MaterialType.transparency,
                            elevation: 6.0,
                            color: Colors.transparent,
                            shadowColor: Colors.grey[50],
                            child: InkWell(
                            splashColor: Colors.grey[400],
                            onTap: () {
                              print('Forgot Password?');
                            },
                             child: FadeAnimation(1.8, Text("Forgot Password?", style: GoogleFonts.varelaRound(color: Colors.blueGrey),),),
                            ),
                             ),
                           ),
                        ],
                      ),) ,
                )
              )
          ]
        ),
      )
    );
  }
}