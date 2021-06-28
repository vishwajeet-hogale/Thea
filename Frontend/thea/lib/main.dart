//import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
//import 'dart:io';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_camera_app/pages/camera_screen.dart';
//import 'package:chewie/chewie.dart';

void main() {
  runApp(MyApp());
}

//welcome page when app opens.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theia',
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Landing Page"),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                //TextField(
                //decoration: InputDecoration(
                //border: OutlineInputBorder(),
                //hintText: 'Enter a search term'
                //),
                //),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Theia',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Terms of Use',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Privacy Page',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  child: Text(
                    "The app will not store the users data anywhere. The app will need persmission to use the camera and speaker.",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  width: 300,
                  height: 100,
                  padding: EdgeInsets.all(12.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffD3D3D3),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
                MaterialButton(
                  child: Text("Agree"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => nextPage()),
                    );
                  },
                  color: Colors.blue,
                ),
                MaterialButton(
                  child: Text("Disagree"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => nextPage()),
                    );
                  },
                  color: Colors.blue,
                ),
                Spacer(flex: 1),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Version Number :0.0.1',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Made by ....',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//page with instructions.
class nextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instructions"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Theia',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 4,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'User Manual',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              child: Text(
                "Double tap the screen tot take a picture and convert image to text",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              width: 300,
              height: 100,
              padding: EdgeInsets.all(12.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffD3D3D3),
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
            MaterialButton(
              child: Text("Next Page"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraApp()),
                );
              },
              color: Colors.red,
            ),
            Spacer(flex: 1),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Version Number :0.0.1',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Made by ....',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CameraApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.black
    ));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,

      ),
      debugShowCheckedModeBanner: false,
      //home:CameraScreen(),
    );
  }
}

//old camera
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   File imageFile;

//   _camera() async {
//     File theImage = await ImagePicker.pickImage(
//       source: ImageSource.camera,
//     );
//     if (theImage != null) {
//       setState(() {
//         imageFile = theImage;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Center(
//             child: ListView(children: <Widget>[
//           Column(children: <Widget>[
//             SizedBox(
//               height: 50.0,
//             ),
//             RaisedButton(
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text('Camera'),
//                   //Icon(Icon.camera),
//                 ],
//               ),
//               onPressed: () {
//                 _camera();
//               },
//             ),
//           ])
//         ])));
//   }
// }
