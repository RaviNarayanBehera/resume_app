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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Assets/Images/download (2).png'),
                          )),
                    ),
                    const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 25),
                    ),
                    const Text(
                      'Use your Google Account',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 50,),
                    const SizedBox(
                      width: 400,
                      height: 90,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffE54335),
                              ),
                            ),
                            hintText: 'Email or phone',
                            hintStyle: TextStyle(fontSize: 15)),
                      ),
                    ),
                    const Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot email?',
                          style: TextStyle(
                              color: Color(0xff0A58D0),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Text(
                          'Not your computer? Use Guest mode to sign in privetely. ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          'Learn more',
                          style: TextStyle(
                              color: Color(0xff0A58D0),
                              fontSize: 10,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Create account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(width: 15,),
                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              color: const Color(0xff0A58D0),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
