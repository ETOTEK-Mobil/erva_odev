import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  bool switchKontrol = false;
  bool checkKontrol = false;
  int radioDeger = 0;
  var toggleDurumlar = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("BUTTONS")),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Switch Buttonu
          Padding(
            padding: const EdgeInsets.all(AppSize.sm),
            child: Container(
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0.5, 1),
                      )
                    ],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(AppSize.md),
                    color: Colors.orangeAccent),
                child: Column(children: [
                  const Text("Switch",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSize.md,
                      )),
                  SwitchListTile.adaptive(
                      title: Text("$switchKontrol"),
                      controlAffinity: ListTileControlAffinity.platform,
                      value: switchKontrol,
                      onChanged: (bool? data) {
                        setState(() {
                          switchKontrol = data!;
                        });
                      }),
                ])),
          ),

          //CheckBox
          Padding(
              padding: const EdgeInsets.all(AppSize.sm),
              child: Container(
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0.5, 1),
                      )
                    ],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(AppSize.md),
                    color: Colors.cyan),
                child: Column(children: [
                  const Text("CheckkBox",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSize.md,
                      )),
                  CheckboxListTile(
                      title: const Text("Beni hatırla"),
                      value: checkKontrol,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? data) {
                        setState(() {
                          checkKontrol = data!;
                        });
                      }),
                ]),
              )),

          // RadioButton
          Padding(
              padding: const EdgeInsets.all(AppSize.sm),
              child: Container(
                width: 500,
                height: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0.5, 1),
                      )
                    ],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(AppSize.md),
                    color: Colors.amber),
                child: Column(children: [
                  const Text("Radio",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSize.md,
                      )),
                  RadioListTile(
                      title: const Text("Seçenek 1"),
                      value: 1,
                      groupValue: radioDeger,
                      onChanged: (int? data) {
                        setState(() {
                          radioDeger = data!;
                        });
                      }),
                  RadioListTile(
                      title: const Text("Seçenek 2"),
                      value: 2,
                      groupValue: radioDeger,
                      onChanged: (int? data) {
                        setState(() {
                          radioDeger = data!;
                        });
                      }),
                ]),
              )),

          //ToggleButton
          Padding(
              padding: const EdgeInsets.all(AppSize.sm),
              child: Container(
                  width: 500,
                  height: 100,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0.5, 1),
                        )
                      ],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(AppSize.md),
                      color: Colors.lightGreen),
                  child: Column(children: [
                    const Text("ToggleButton",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSize.md,
                        )),
                    ToggleButtons(
                        isSelected: toggleDurumlar,
                        onPressed: (int secilenindeks1) {
                          setState(() {
                            toggleDurumlar[secilenindeks1] =
                                !toggleDurumlar[secilenindeks1];
                          });
                        },
                        children: const [
                          Icon(Icons.format_bold_outlined),
                          Icon(Icons.format_italic),
                          Icon(Icons.format_underlined),
                        ]),
                  ]))),
        ]));
  }
}
