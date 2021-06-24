
import 'package:atom_new/webV.dart';
import 'package:flutter/material.dart';

import 'atomColors.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AtomColors.bgcolor),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginb.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(AtomColors.txcolor),
                          ),
                        ),
                        Text(' to Atom',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                            color: Color(AtomColors.txcolor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color(AtomColors.black),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(AtomColors.black2),
                              blurRadius: 20,
                              offset: Offset(0,10),
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Color(AtomColors.bgcolor))
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                cursorColor: Color(AtomColors.txcolor),
                                textCapitalization: TextCapitalization.none,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                  color: Color(AtomColors.txcolor),
                                ),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
                                    hintStyle: TextStyle(
                                        color: Color(AtomColors.txcolor),
                                        fontWeight: FontWeight.w300
                                    ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                cursorColor: Color(AtomColors.txcolor),
                                obscureText: true,
                                style: TextStyle(
                                  color: Color(AtomColors.txcolor),
                                ),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                        color: Color(AtomColors.txcolor),
                                        fontWeight: FontWeight.w300
                                    )
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
              SizedBox(height: 60,),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                color: Color(AtomColors.blue),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WebV()));
                },
                child: Text('Sign in',
                  style: TextStyle(
                    color: Color(AtomColors.black),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


