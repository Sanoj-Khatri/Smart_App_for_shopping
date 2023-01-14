import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smartapp_fyp/screens/category.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smartapp_fyp/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // scaffoldBackgroundColor: Colors.orange,
          backgroundColor: Colors.amber,
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Color.fromARGB(255, 232, 229, 229)),
      // home: const CategoryScreen(title: 'Smart Shopping App'),
      home: SplashScreen(),
    );
  }
}
