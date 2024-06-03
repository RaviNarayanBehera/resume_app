import 'package:flutter/cupertino.dart';
import 'package:resume_app/Screens/Dynamic%20TextField.dart';
import 'package:resume_app/Screens/Image_Picker.dart';
import 'package:resume_app/Screens/Login_screen.dart';
import 'package:resume_app/Screens/login_page.dart';
import 'package:resume_app/pdf_&_invoice/invoice.dart';
import '../Screens/Id_Page.dart';
import '../Screens/dialogue box.dart';
import '../Screens/drawer_Page.dart';
import '../Screens/snackBar.dart';
import '../Screens/status_bar.dart';
import '../pdf_&_invoice/pdf.dart';

class AppRoutes{
  static Map<String,Widget Function(BuildContext)> routes = {
    // '/' : (context) => UserInfo(),
    // '/' : (context) => const Image_Picker(),
    '/' : (context) => const UserInfoApp(),
    // '/' : (context) => const Registration(),
    // '/' : (context) => const Snack_bar(),
    // '/' : (context) => const DynamicTextField(),
    // '/' : (context) => const InvoiceScreen(),
    // '/pdf' : (context) => const PdfScreen(),
    // '/' : (context) => const LoginPage1(),
    // '/' : (context) => const GmailPage(),
  };
}