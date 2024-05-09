import 'package:flutter/cupertino.dart';
import 'package:resume_app/Screens/Login_screen.dart';
import '../Screens/drawer_Page.dart';
import '../Screens/status_bar.dart';

class AppRoutes{
  static Map<String,Widget Function(BuildContext)> routes = {
    // '/' : (context) => UserInfo(),
    '/' : (context) => const LoginPage(),
    // '/' : (context) => const GmailPage(),
  };
}