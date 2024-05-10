import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 300,
                  width: 600,
                  color: Colors.white,
                  child:
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sign in',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
                            SizedBox(height: 10,),
                            Text('Use your Google Account',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sign in',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                      Text('Use your Google Account',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
