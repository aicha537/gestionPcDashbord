import 'package:flutter/material.dart';
import 'package:gestionpcdashboard/utils/utils.dart';
import 'package:gestionpcdashboard/widgets/add_pc.dart';

 class PcComponent extends StatefulWidget {
  const PcComponent({super.key});

 
  @override
  State<PcComponent> createState() => _PcComponentState();
}

class _PcComponentState extends State<PcComponent> {
  int selectedIndex = 0;
  void goToBack() {
    setState(() {
      selectedIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return selectedIndex != 0
        ? Pcadd(
            goToback: goToBack,
          )
        : Expanded(
            child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .8,
                margin: const EdgeInsets.all(12),
                height: 120,
                decoration: BoxDecoration(
                    color: primary, borderRadius: BorderRadius.circular(12)),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .8,
                margin: const EdgeInsets.all(12),
                child: DataTable(
                    headingRowColor:
                        MaterialStateColor.resolveWith((states) => Colors.grey),
                    columns: const [
                      DataColumn(label: Text("Nom et prénom")),
                      DataColumn(label: Text("Email")),
                      DataColumn(label: Text("Numéro de téléphone")),
                      DataColumn(label: Text("Sexe")),
                    ],
                    rows: [
                      DataRow(
                        cells: const [
                          DataCell(Text("Aichata DICKO")),
                          DataCell(Text("aicha@gmail.com")),
                          DataCell(Text("76 89 09 78")),
                          DataCell(Text("Féminin"))
                        ],
                        onSelectChanged: (value) {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                      ),
                      const DataRow(cells: [
                        DataCell(Text("Aichata DICKO")),
                        DataCell(Text("aicha@gmail.com")),
                        DataCell(Text("76 89 09 78")),
                        DataCell(Text("Féminin"))
                      ]),
                      const DataRow(cells: [
                        DataCell(Text("Aichata DICKO")),
                        DataCell(Text("aicha@gmail.com")),
                        DataCell(Text("76 89 09 78")),
                        DataCell(Text("Féminin"))
                      ]),
                    ]),
              )
            ],
          ));
  }
}
