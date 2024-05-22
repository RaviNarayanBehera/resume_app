import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Snack_bar extends StatefulWidget {
  const Snack_bar({super.key});

  @override
  State<Snack_bar> createState() => _Snack_barState();
}

class _Snack_barState extends State<Snack_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Show SnackBar'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('SnackBar....!'),
                    backgroundColor: Colors.red,
                    duration: Duration(seconds: 5),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
