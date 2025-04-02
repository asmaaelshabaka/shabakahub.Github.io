import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shabakahub/firebase_options.dart';
import 'app.dart';

Future<void> main() async  {

  //ensure that widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();


  //initialize Getx local storage


  //initialize firebase and authontcation repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      //.then((_) => Get.put(AuthentcationRe()));

//main app starts here
  runApp(const App());
}


