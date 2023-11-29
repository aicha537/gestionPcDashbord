import 'package:flutter/material.dart';
import 'package:gestionpcdashboard/components/header.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderDash(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Mes PC actifs",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          ElevatedButton.icon(
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.orangeAccent,
                                elevation: 5),
                            label: const Text("Suivie de PC"),
                            icon: const Icon(Icons.bar_chart_sharp),
                            onPressed: () {},
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Projets(
                  title: 'PC',
                  Total: 100,
                  icon: const Icon(Icons.computer),
                  press: () {}),
              Projets(
                  title: 'PC',
                  Total: 100,
                  icon: const Icon(Icons.computer),
                  press: () {}),
              Projets(
                  title: 'PC',
                  Total: 100,
                  icon: const Icon(Icons.computer),
                  press: () {}),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 4,
                child: _buildDataTable([
                  const DataColumn(label: Text('ID')),
                  const DataColumn(label: Text('Name')),
                  const DataColumn(label: Text('LastName')),
                  const DataColumn(label: Text('Age')),
                ], [
                  DataRow(cells: [
                    const DataCell(Text("1")),
                    const DataCell(Text("Alex")),
                    const DataCell(Text("Anderson")),
                    DataCell(
                      Container(
                        color: Colors.green, // Couleur de fond verte
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Center(
                            child: Text(
                              "18",
                              style: TextStyle(
                                color: Colors.white, // Couleur du texte blanc
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text("2")),
                    const DataCell(Text("John")),
                    const DataCell(Text("Anderson")),
                    DataCell(
                      Container(
                        color: Colors.red, // Couleur de fond rouge
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Center(
                            child: Text(
                              "24",
                              style: TextStyle(
                                color: Colors.white, // Couleur du texte blanc
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ]),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey), // Bordure du tableau
                        borderRadius:
                            BorderRadius.circular(10.0), // Coins arrondis
                      ),
                      margin: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          // Titre de la liste des apprenants
                          Container(
                            color: Colors.grey[200], // Couleur de fond du titre
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Center(
                                child: Text(
                                  "Mes Historiques",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Liste des apprenants (à remplacer par vos données réelles)
                          const ListTile(
                            title: Text("Apprenant 1"),
                          ),
                          const ListTile(
                            title: Text("Apprenant 2"),
                          ),
                          // Ajoutez autant d'éléments que nécessaire
                        ],
                      ),
                    ),
                    // Bouton d'accès à la liste des apprenants
                    ElevatedButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orangeAccent,
                        elevation: 5,
                      ),
                      label: const Text("Liste des Apprenants"),
                      icon: const Icon(Icons.list),
                      onPressed: () {
                        // Naviguez vers la page de la liste des apprenants
                      },
                    ),
                    // Texte "Liste des PC" (à remplacer par vos données réelles)
                    const Text("Liste des PC"),
                    // Ajoutez d'autres éléments si nécessaire
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildDataTable(List<DataColumn> columns, List<DataRow> rows) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey), // Bordure du tableau
      borderRadius: BorderRadius.circular(10.0), // Coins arrondis
    ),
    margin: const EdgeInsets.all(8.0),
    child: DataTable(
      columns: columns,
      rows: rows,
      columnSpacing: 15.0, // Espacement entre les colonnes
      dataRowHeight: 60.0, // Hauteur des lignes
      headingRowHeight: 70.0, // Hauteur de la ligne d'en-tête
      dividerThickness: 2.0, // Épaisseur de la ligne de séparation
      decoration: BoxDecoration(
        color: Colors.grey[200], // Couleur de fond du tableau
        borderRadius: BorderRadius.circular(10.0), // Coins arrondis
      ),
      headingRowColor: MaterialStateColor.resolveWith(
        (states) =>
            Colors.orangeAccent[200]!, // Couleur de fond de la ligne d'en-tête
      ),
    ),
  );
}

// class InfoPc extends StatelessWidget {
//   const InfoPc(
//       {super.key,
//       required this.titre,
//       required this.total,
//       required this.icon});

//   final String titre;
//   final int total;
//   final Icon icon;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(color: Colors.red, boxShadow: [
//         BoxShadow(
//             color: Color.fromRGBO(0, 0, 0, 0.5),
//             blurRadius: 4,
//             offset: Offset(0, 0))
//       ]),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Container(
//                   padding: const EdgeInsets.all(0.9),
//                   height: 100,
//                   width: 100,
//                   child: Icon(icon.icon)),
//               const SizedBox(
//                 height: 20,
//               ),
//             ],
//           ),
//           Text(titre),
//           Text("$total")
//         ],
//       ),
//     );
//   }
// }

// class InfoCard extends StatelessWidget {
//   const InfoCard(
//       {super.key, this.crossAxisCount = 4, this.childAspectRatio = 1});
//   final int crossAxisCount;
//   final double childAspectRatio;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         left: 10,
//         right: 10,
//       ),
//       child: GridView.builder(
//         itemCount: 4,
//         physics: const NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: crossAxisCount,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 16,
//             childAspectRatio: childAspectRatio),
//         itemBuilder: (context, index) => const InfoPc(
//             titre: "Total PC endommagées",
//             total: 12,
//             icon: Icon(Icons.computer)),
//       ),
//     );
//   }
// }

class Projets extends StatelessWidget {
  const Projets(
      {Key? key,
      required this.title,
      required this.Total,
      required this.icon,
      required this.press})
      : super(key: key);

  final String title;
  final int Total;
  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 300,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Colors.green),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$Total",
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    Text(title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Icon(icon.icon, size: 100),
            ),
          ],
        ),
      ),
    );
  }
}
