import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  //Image file
  File? image;

  //Image picker
  final picker = ImagePicker();

  //Pick Image Method
  Future<void> pickImage(ImageSource source) async {
    //Pick from camera or gallery
    final pickedFile = await picker.pickImage(source: source);

    //Update selected image
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image display
            SizedBox(
              height: 300,
              width: 300,
              child: image != null
                  ?
                    // image selected
                    Image.file(image!)
                  :
                    // no image selected
                    Center(child: Text("No image selected")),
            ),

            //button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Camera button
                ElevatedButton(
                  onPressed: () => pickImage(ImageSource.camera),
                  child: Text("Camera"),
                ),

                //Gallery button
                ElevatedButton(
                  onPressed: () => pickImage(ImageSource.gallery),
                  child: Text("Gallery"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
import 'dart:io'; // for File 
package

dependencies:
  image_picker: ^0.8.7+4
dependency 

flutter pub get
run

Android (AndroidManifest.xml):
<uses-permission android:name="android.permission.CAMERA"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>

iOS (Info.plist):
<key>NSCameraUsageDescription</key>
<string>We need camera access to take pictures</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>We need photo library access to select pictures</string>


*/
