import 'package:addan_api/Providers/UserProvider.dart';
import 'package:addan_api/Screens/UsersScreren.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => UsersProvider(),
        child: UsersScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}