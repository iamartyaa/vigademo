import 'package:flutter/material.dart';
import 'package:vigademo/widgets/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viga Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.amber,
        backgroundColor: const Color(0xFFE5E5E5),
        fontFamily: 'Poppins',
        
        textTheme: const TextTheme(
          titleMedium: TextStyle(fontFamily: 'Poppins', fontSize: 29, fontWeight: FontWeight.w600,color: Colors.black)
        ),
      ),
      home: const ProfileScreen(),
    );
  }
}
