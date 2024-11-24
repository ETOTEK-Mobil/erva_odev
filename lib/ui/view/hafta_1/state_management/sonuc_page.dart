import 'package:flutter/material.dart';

class SonucPage extends StatelessWidget {
  final int sonuc; //stage_management sayfasından alınan sonuç

  const SonucPage({super.key, required this.sonuc});//Dışarıdan veri almak için constructor oluşturdum

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Sonuc")),//sayfa başlığı

    body :Center(
      child: Text("Sonuc :$sonuc",style: const TextStyle(fontSize: 50),)//sonuç değerini gösteririr
      ),
    );
  }
}