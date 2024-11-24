import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {
  const Page2 ({super.key});
  
  @override

  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      title: const Text("Row-Column-Stack Kullanimi"),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),//AppBar'a anasayfaya dönmesi için geri dönüş tuşu veriyoruz
        onPressed: (){
          Navigator.pop(context);//bir önceki sayfaya geri dönmesini saglar
        },
        ),//Sayfa Başlığı
    ),

    body: Stack(
     //Burada bir arka plan düzeni ve ortada bir daire ekliyoruz.

        children: [
          Column(  //Ana düzeni Column içine tutuyoruz
            children: [
              Expanded(
                child: Row(   //Column içinde yatayda sıralama yaptık
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(color: const Color.fromARGB(255, 132, 249, 251)),
                    ),
                    Expanded(
                      child: Container(color: const Color.fromARGB(255, 137, 239, 140)),
                    ),
                  ],
                ),
              ),
              
          Expanded(
            child: Column( //Column içinde dikeyde sıralama yaptık
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(color: const Color.fromARGB(255, 246, 160, 160)),
                      ),
                      Expanded(
                        child: Container(color: const Color.fromARGB(255, 242, 245, 158)),
                      ),
                    ],
                  ),
          ),
              
            ],
          ),

        //
          Center(
          //  Stack içinde, diğer widgetların üstüne yuvarlak bir widget yerleştiriyoruz
              child: Container(
                 // Dairenin boyutu
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  //Dairenin şeklini belirledik
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 222, 136, 237),
                ),
              ),
            ),
          
        ],
      )
    );
    
  }
}
