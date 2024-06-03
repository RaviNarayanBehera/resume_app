import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;
class Image_Picker extends StatefulWidget {
  const Image_Picker({super.key});

  @override
  State<Image_Picker> createState() => _Image_PickerState();
}

class _Image_PickerState extends State<Image_Picker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            // child: Container(
            //   height: 400,
            //   width: 450,
            //   decoration: BoxDecoration(
            //     color: Colors.black,
            //     image: (fileImage!=null)?DecorationImage(
            //         fit:BoxFit.cover,
            //         image: FileImage(fileImage!)):null,
            //   ),
            //
            // ),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.lightBlue.shade300,
              backgroundImage: (FileImage!=null)?FileImage(fileImage!):null,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async {
                    XFile? xfileImage= await imagePicker.pickImage(source: ImageSource.camera);
                    setState(() {
                      fileImage=File(xfileImage!.path);
                    });


                  }, icon: Icon(Icons.camera_alt_rounded,size: 65,),color: Colors.black,),
                IconButton(
                  onPressed: ()  async {
                    XFile? xfileImage= await imagePicker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      fileImage=File(xfileImage!.path);
                    });

                  }, icon: Icon(Icons.photo_rounded,size: 65,),color: Colors.black,),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            height: 40,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: const Text('Upload Me',style: TextStyle(color: Colors.white,fontSize: 17),),
          )
        ],
      ),
    );
  }
}