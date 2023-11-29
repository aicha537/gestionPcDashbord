import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderDah extends StatefulWidget {
  const HeaderDah({Key? key}) : super(key: key);

  @override
  State<HeaderDah> createState() => _HeaderDahState();
}

class _HeaderDahState extends State<HeaderDah> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            child: Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.orange, // Couleur orange
                fontSize: 40.0, // Taille de la police
                fontWeight: FontWeight.bold, // Gras
              ),
            ),
          ),
          const Expanded(child: CupertinoSearchTextField()),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
                const SizedBox(
                  width: 50,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/young.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
