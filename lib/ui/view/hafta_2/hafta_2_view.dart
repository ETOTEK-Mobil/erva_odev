import 'package:flutter/material.dart';
import 'package:odev/ui/view/hafta_2/images_page.dart';
import 'package:odev/ui/view/hafta_2/picker_page.dart';
import 'package:odev/ui/view/hafta_2/progress_slider_bar_page.dart';
import 'package:odev/ui/view/hafta_2/text_textfield_page.dart';
import 'package:odev/ui/view/hafta_2/webview_page.dart';
import 'package:odev/ui/widgets/buttons/common_button.dart';
import 'buttons_page.dart';

class Hafta2View extends StatelessWidget {
      Hafta2View({super.key});

  final _pageNames = [
    'Text & TextField',
    'Butonlar',
    'Progress Bar & Slider',
    'Webview',
    'Resimler',
    'Dropdown Button & Time Date Picker',
  ];

  // Sayfa widget'larını içeren liste
  final _pages = [
    const TextTextfieldPage(),
    const ButtonsPage(),
    const ProgressSliderBarPage(),
    const WebviewPage(),
    const ImagesPage(),
    const PickerPage(),
  ];
  @override
  
  Widget build(BuildContext context) {
        
    return Scaffold(
          appBar: AppBar(
          title: const Text("Hafta 2"),
    ),
      body: ListView.separated(
          itemCount: _pageNames.length,
        separatorBuilder: (context, index) => const Divider(), // Ayracı tanımla
        itemBuilder: (context, index) {
          return CommonButton(
            page: _pages[index],       // İlgili sayfayı gönder
            pageName: _pageNames[index], // Sayfa ismini gönder
      );
        }
        ),
        
    );
  }
}

