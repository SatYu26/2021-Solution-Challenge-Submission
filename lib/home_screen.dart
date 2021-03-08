import 'package:flutter/material.dart';
import 'package:mask_detection_app/ui/camera_screen.dart';
import 'package:mask_detection_app/ui/local_storage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Face Mask Detector',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        )),
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 1,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Doodle.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  side: BorderSide(color: Colors.blueAccent, width: 2),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.blueAccent)),
                ),
                child: Text(
                  'Detect face mask from the Image',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => FaceDetectionFromImage(),
                  //   ),
                  // );

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocalStorage()));
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  side: BorderSide(color: Colors.red, width: 2),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.red)),
                ),
                child: Text('Detect face mask from Live Camera',
                    style: TextStyle(color: Colors.black)),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => FaceDetectionFromLiveCamera(),
                  //   ),
                  // );

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CameraPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
