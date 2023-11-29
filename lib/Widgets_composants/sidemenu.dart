import 'package:flutter/material.dart';
import 'package:gestionpcdashboard/Provider/provider.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/pcmanager.png'),
            ),
            MenuList(
              titre: "Dashboard",
              icon: const Icon(Icons.dashboard),
              press: () => navigateToPage(0),
            ),
            MenuList(
              titre: "Apprenants",
              icon: const Icon(Icons.accessibility_new_outlined),
              press: () => navigateToPage(1),
            ),
            MenuList(
              titre: "PC",
              icon: const Icon(Icons.computer),
              press: () => navigateToPage(2),
            ),
            MenuList(
              titre: "Attributions",
              icon: const Icon(Icons.generating_tokens),
              press: () => navigateToPage(3),
            ),
            MenuList(
              titre: "Suivie",
              icon: const Icon(Icons.transit_enterexit_outlined),
              press: () => navigateToPage(4),
            ),
            MenuList(
              titre: "Notifications",
              icon: const Icon(Icons.notifications),
              press: () => navigateToPage(5),
            ),
            MenuList(
              titre: "Déconnexion",
              icon: const Icon(Icons.logout_outlined),
              press: () {},
            )
          ],
        ),
      ),
    );
  }

  void navigateToPage(int pageId) {
    switch (pageId) {
      case 0:
        context.read<RouteProvider>().setCurrentIndex(pageId);
        // Navigation vers la page Dashboard
        break;
      case 1:
        context.read<RouteProvider>().setCurrentIndex(pageId);
        //Navigator.pushReplacement(_navigatorKey.currentState, MaterialPageRoute(builder: (context)=>));
        // Navigation vers la page Apprenant
        break;
      case 2:
        context.read<RouteProvider>().setCurrentIndex(pageId);
        // Navigation vers la page Pc
        break;
      case 3:
        context.read<RouteProvider>().setCurrentIndex(pageId);
        // Navigation vers la page Attribution
        break;
      case 4:
        context.read<RouteProvider>().setCurrentIndex(pageId);
        // Navigation vers la page
        break;
      case 5:
        context.read<RouteProvider>().setCurrentIndex(pageId);
        // Navigation vers la page Paramettrage
        break;
      case 6:
        context.read<RouteProvider>().setCurrentIndex(pageId);
        // Navigation vers la page Paramettrage
        break;
    }
  }
}

//Liste de menu
class MenuList extends StatelessWidget {
  const MenuList(
      {super.key,
      required this.titre,
      required this.icon,
      required this.press});

  final String titre;
  final Icon icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: press,
        horizontalTitleGap: 10,
        leading: Icon(icon.icon),
        title: Text(titre));
  }
}
