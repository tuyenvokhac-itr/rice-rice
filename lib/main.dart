import 'package:flutter/material.dart';
import 'package:rice_rice/config/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rice Rice',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text('a'),
      ),
    );
  }
}
