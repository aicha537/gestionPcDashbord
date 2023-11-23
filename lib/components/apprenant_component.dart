import 'package:flutter/material.dart';
import 'package:gestionpcdashboard/utils/utils.dart';

class ApprenantComponent extends StatefulWidget {
  const ApprenantComponent({super.key});

  @override
  State<ApprenantComponent> createState() => _ApprenantComponentState();
}

class _ApprenantComponentState extends State<ApprenantComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(color: primary)),
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Enregistrement des Apprenants"),
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(color: primary),
                        child: const Text("Details"),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 70,
                height: MediaQuery.of(context).size.height - 120,
                width: MediaQuery.of(context).size.width * .73,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * .3,
                        height: 500,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Stack(
                          children: [
                            Positioned(
                              //top: 0,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                height: 120,
                                decoration: BoxDecoration(
                                    color: primary,
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                SizedBox(
                                  width: 142,
                                  height: 142,
                                  child: CircleAvatar(
                                    backgroundImage: Image.asset(
                                      "assets/images/young.png",
                                      //width: 120,
                                    ).image,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Nom:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Text("Dicko"),
                                      )
                                    ],
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Prénom:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Aicha"),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Sexe:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Féminin"),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Email:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("aichadicko537@gmail.com"),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "PC Num:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("PC2"),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Etat:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Bon"),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Téléphone:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("90 70 82 25"),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Date:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("14-01-2021"),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 90,
                                  height: 30,
                                  color: primary,
                                  child: const Text("Retour"),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .3,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              height: 120,
                              child: Text(
                                "Formulaire",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: primary,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
