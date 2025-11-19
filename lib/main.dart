import 'package:attendence_app/wrapper/auth_wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAJF2KW8RTbhRrEOCIuJh3MVdPomeHm_1c",
      appId: "1:37551426431:android:257d4942fe23fe54fe284a",
      messagingSenderId: "37551426431",
      projectId: "attendance-app-a8116", 
    )
  );
  runApp(AttendenceApp());
}

class AttendenceApp extends StatelessWidget {
  const AttendenceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AttendenceApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: AuthWrapper(),
    );
  }
}