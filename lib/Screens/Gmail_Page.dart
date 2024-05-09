import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GmailPage extends StatefulWidget {
  const GmailPage({super.key});

  @override
  State<GmailPage> createState() => _GmailPageState();
}
TextEditingController txtGmail = TextEditingController();
class _GmailPageState extends State<GmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: Column(
          children: [
            SizedBox(
            height: 130,
                child: DrawerHeader(child: Text('Gmail',style: TextStyle(color: Colors.grey,fontSize: 40,),))),
            list_Tile(icon: Icons.all_inbox_outlined, txt: 'All Inboxes'),
            list_Tile(icon: Icons.inbox, txt: 'Inbox'),
            list_Tile(icon: Icons.star_border_outlined ,txt: 'Starred'),
            list_Tile(icon: Icons.access_time_outlined ,txt: 'Snoozed'),
            list_Tile(icon: Icons.label_important_outlined ,txt: 'Important'),
            list_Tile(icon: Icons.send_outlined ,txt: 'Sent'),
            list_Tile(icon: Icons.drafts ,txt: 'Drafts'),
            list_Tile(icon: Icons.mail_outline_outlined ,txt: 'All Mail'),
            list_Tile(icon: Icons.report_gmailerrorred_outlined,txt: 'Spam'),
            list_Tile(icon: Icons.delete_sweep_outlined ,txt: 'Trash'),
            list_Tile(icon: Icons.add,txt: 'Create new'),
            list_Tile(icon: Icons.settings,txt: 'Settings'),

          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gmail'),
      ),
    );
  }

  ListTile list_Tile({required icon,required String txt}) => ListTile(leading: Icon(icon,color: Colors.white,),title: Text('$txt',style: TextStyle(color: Colors.white),),);
}
