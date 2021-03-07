import './face_detection_camera.dart';
import 'Detection_on_image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Face Mask Detector'),backgroundColor: Colors.white70,shadowColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Doodle.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Container(color: Color(0x00000000),),),
            RaisedButton( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),side: BorderSide(color: Colors.blueAccent) ,
            ),
              child: Text('Detect face mask from the Image' , style: TextStyle(color: Colors.black ),),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FaceDetectionFromImage(),
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            RaisedButton( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),side: BorderSide(color: Colors.red)
            ),
              child: Text('Detect face mask from Live Camera' , style: TextStyle(color: Colors.black )),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FaceDetectionFromLiveCamera(),
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
