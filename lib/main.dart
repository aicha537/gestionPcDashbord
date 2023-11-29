import 'package:flutter/material.dart';
import 'package:gestionpcdashboard/Dashboard/Accueil.dart';
import 'package:gestionpcdashboard/Provider/provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider<RouteProvider>(
          create: (context) => RouteProvider(),
   child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(splashColor: Colors.orange),
      home: const AccueilDash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
