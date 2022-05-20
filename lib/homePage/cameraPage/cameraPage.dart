import 'dart:io';

import 'package:camera/camera.dart';
import 'package:exec_penal/homePage/cameraPage/takePicPage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  String? _path = null;

  void _showCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.first;

    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TakePicturePage(camera: camera)));

    setState(() {
      _path = result;
      result == null ? _path = null : _path = result;
    });
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: 150,
              child: Column(children: <Widget>[
                ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      _showCamera();
                    },
                    leading: Icon(Icons.photo_camera),
                    title: Text("Take a picture from camera")),
              ]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        _path == null
            ? Image.asset("images/place-holder.png")
            : Image.file(File(_path!)),
        FlatButton(
          child: Text("Take Picture", style: TextStyle(color: Colors.white)),
          color: Colors.green,
          onPressed: () {
            _showOptions(context);
          },
        )
      ]),
    ));
  }
}
