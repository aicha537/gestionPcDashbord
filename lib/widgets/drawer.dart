import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  DrawerWidget({super.key, required this.onItemTapped});
  Function onItemTapped;

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //Function onItemTapped = widget.onItemTapped;
    return SafeArea(
      /*width: kIsWeb
                ? MediaQuery.of(context).size.width * .25
                : MediaQuery.of(context).size.width * .8,*/

      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/images/pcmanager.png',
                //  width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .25,
              child: ListTile(
                title: const Text('Dashboard'),
                selected: selectedIndex == 0,
                onTap: () {
                  // Update the state of the app
                  widget.onItemTapped(0);
                  // Then close the drawer
                  //Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .25,
              child: ListTile(
                title: const Text('Apprenants'),
                selected: selectedIndex == 1,
                onTap: () {
                  print("object 1");
                  // Update the state of the app
                  widget.onItemTapped(1);
                  // Then close the drawer
                  //Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .25,
              child: ListTile(
                title: const Text('Suivis'),
                selected: selectedIndex == 2,
                onTap: () {
                  // Update the state of the app
                  widget.onItemTapped(2);
                  // Then close the drawer
                  // Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .25,
              child: ListTile(
                title: const Text('Historiques'),
                selected: selectedIndex == 3,
                onTap: () {
                  // Update the state of the app
                  widget.onItemTapped(3);
                  // Then close the drawer
                  // Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
