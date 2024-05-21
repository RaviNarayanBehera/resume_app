import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_app/pdf_&_invoice/invoice.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => generatePdf(),
      )
    );
  }
}

Future<Uint8List> generatePdf()
{
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page( pageFormat: PdfPageFormat.a4,
    build: (context) => pw.Column(
      children: [
        ...List.generate(invoiceList.length, (index) => pw.Text(
          'Course Name : ${invoiceList[index].course}\nFees : ${invoiceList[index].fee}/-\nDuration : ${invoiceList[index].duration}\n\n'
        ),),
      ],
    ),
    ),
  );
  return pdf.save();
}