import 'package:flutter/material.dart';
import 'package:ironshop/LoginPage.dart';

import 'StyleScheme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signUpPage(),
    );
  }
}

class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'sfpro',
                        fontWeight: FontWeight.w700,
                        color: Colors.orange),
                  ),

                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Mobile Number'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Email Id'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  SizedBox(
                    height: 20,
                  ),


                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: gradientStyle),
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'sfpro',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have account ?",
                  style: TextStyle(fontSize: 16, fontFamily: 'sfpro'),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                    onTap: loginPage,
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  void loginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
