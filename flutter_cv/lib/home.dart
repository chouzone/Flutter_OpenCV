import 'dart:async';
import 'dart:io';
import 'package:opencv/opencv.dart';
import 'package:opencv/core/core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  HomePage_State createState() => HomePage_State();
}

class HomePage_State extends State<HomePage> {
  final picker = ImagePicker();
  var file;
  getImagePicker() async {
    var pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      file = File(pickedFile.path);
    });
  }

  applyFilter() async {
    var res = await ImgProc.blur(
        await file.readAsBytes(), [45, 45], [20, 30], Core.borderReflect);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OPENCV FILTER"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton.icon(
                      onPressed: getImagePicker,
                      icon: Icon(Icons.add_a_photo),
                      label: Text("AddPhoto")),
                  FlatButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.cancel_outlined),
                      label: Text("Cancelar"))
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: file != null
                    ? Image(
                        image: FileImage(file),
                      )
                    : null,
              ),
            ),
            Container(
              color: Colors.blue,
              width: double.maxFinite,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10.0),
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 7.0),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 7.0),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 7.0),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 7.0),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 7.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
