import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';
import 'package:odev/ui/view/hafta_1/state_management/sonuc_page.dart';


class StageManagementPage extends StatefulWidget {
  const StageManagementPage({super.key});

  
  @override
  State<StageManagementPage> createState() => StageManagementPageState();
}


class StageManagementPageState extends State<StageManagementPage> {
  int counter = 0; //Sayaç başlangıç değeri
  @override

  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(title: const Text("State Management")),//Sayfa Başlığı

    body:  Center(
    
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //Ortaya Hizalama
            children: [
              Text("$counter",style: const TextStyle(fontSize: AppSize.lg),),// Sayaç değeri büyük boyutlu olarak gösteriliyor

                Row(
            mainAxisAlignment: MainAxisAlignment.center, // Düğmeleri ortaya hizalama

            children: [

              //sayac azaltma butonu
          const SizedBox(width: AppSize.sm),
            Padding(
              padding: const EdgeInsets.all(AppSize.sm),
                child: ElevatedButton(
                child: const Text("Azalt"),
                    onPressed:  ()
                { 
                    setState(() {
                    if(counter > 0 )// Sayaç 0'ın altına inmeyecek
                    {counter--;}// Sayaç azaltılıyor
                    
                  });
                },
              ),
            ),


            //Sayac Arttırma Butonu
          const SizedBox(width: AppSize.sm),
            Padding(
              padding: const EdgeInsets.all(AppSize.sm),
                child: ElevatedButton(
                child: const Text("Arttir"),
                    onPressed: (){
                        setState(() {
                        counter++;});// Sayaç artırılıyor
                  },
                ),
              ),
            ]
          ),

            
            const SizedBox(height: AppSize.md),// Butonlar arasında boşluk
            Padding(
              padding: const EdgeInsets.all(AppSize.sm),
              child: ElevatedButton(
                      child: const Text("Sonuc Gor"),
                      onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SonucPage(sonuc: counter)));// Sayacı Page3'e gönderme
                    },
                ),
              ),
          ]     
        )
      ),     
    );
          
        
      
  
  }
}