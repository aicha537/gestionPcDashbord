import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderDash extends StatefulWidget {
  const HeaderDash({super.key});

  @override
  State<HeaderDash> createState() => _HeaderDashState();
}

class _HeaderDashState extends State<HeaderDash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              child: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.orange, // Couleur orange
                  fontSize: 18.0, // Taille de la police
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
                      onPressed: () {}, icon: const Icon(Icons.notifications)),
                  const SizedBox(
                    width: 50,
                  ),
                  const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/young.png')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
