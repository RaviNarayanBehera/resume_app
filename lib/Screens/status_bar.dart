import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}
class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.red.shade300,
        ),
        centerTitle: true,
        title: Text('User-Information',style: TextStyle(color: Colors.black,fontSize: 30),),
      ),
    );
  }
}