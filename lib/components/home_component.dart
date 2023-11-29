import 'package:flutter/material.dart';
import 'package:gestionpcdashboard/components/header.dart';

// class Todo {
//   String name;
//   bool enable;
//   Todo({this.enable = true, required this.name});
// }

class HomeComponent extends StatefulWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  State<HomeComponent> createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Expanded(child: HeaderDash())],
      ),
    );
  }
}
