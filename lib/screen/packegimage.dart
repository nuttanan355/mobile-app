import 'dart:io';

import 'package:app/confin/constant.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class PackageImage extends StatefulWidget {
  const PackageImage({Key? key}) : super(key: key);

  @override
  _PackageImageState createState() => _PackageImageState();
}

class _PackageImageState extends State<PackageImage> {
  var file;

  Future<void> openCamera() async {
    var picker = ImagePicker();
    var photo = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      file = File(photo!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: file == null ? Text('Not Found') : Image.file(file),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Open Camera');
          openCamera();
        },
        child: Icon(Icons.camera),
        backgroundColor: pColor,
      ),
    );
  }
}