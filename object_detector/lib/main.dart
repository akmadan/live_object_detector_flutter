import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:object_detector/first.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Color(0xff9542f5)),
      home: FirstScreen(),
    );
  }
}
