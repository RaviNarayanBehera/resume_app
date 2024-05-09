import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('Asset/images/login_logo.jpg'),
                    )),
                  ),
                ],
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome Back,',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  )),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make it work, make it right, make it fast.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 2,
                      ),
                    ),
                    prefixIcon: Icon(Icons.person_outline_rounded),
                    hintText: 'E-Mail',
                    hintStyle: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                    prefixIcon: Icon(Icons.fingerprint_rounded),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 23),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                    child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                'OR',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                ),
                child: const Center(
                    child: Text(
                  'Sign-In with Google',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                )),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 65,
                    ),
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                    Text(
                      "Signup",
                      style: TextStyle(color: Colors.blue, fontSize: 19),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
