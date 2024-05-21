import 'package:flutter/material.dart';
import 'package:resume_app/Screens/Id_Page.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Invoice Screen"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/pdf');
              },
                child: Icon(Icons.picture_as_pdf_outlined)),
          )
        ],
      ),
      body: Column(
        children: [
          ...List.generate(invoiceList.length, (index) => ListTile(
            title: Text('Course Name: ${invoiceList[index].course}',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('Fees : Rs. ${invoiceList[index].fee}/-',style: TextStyle(fontWeight: FontWeight.w400),),
            trailing: Text('${invoiceList[index].duration}',style: TextStyle(fontSize: 15),),
          ))
        ],
      ),
    );
  }
}

List<InvoiceModel> invoiceList = [
  InvoiceModel(course: 'App Development', fee: '85000', duration: '12 Months'),
  InvoiceModel(course: 'Web Development', fee: '82000', duration: '12 Months'),
  InvoiceModel(course: 'C & C++ Language', fee: '9000', duration: '4 Months'),
  InvoiceModel(course: 'Java & Java Script ', fee: '19500', duration: '6 Months'),
];

class InvoiceModel {
  String? duration;
  String? fee;
  String? course;

  InvoiceModel({this.duration, this.fee, this.course});
}
