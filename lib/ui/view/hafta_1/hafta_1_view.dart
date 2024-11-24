import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';
import 'package:odev/ui/view/hafta_1/row_column_stack_page.dart';
import 'package:odev/ui/view/hafta_1/state_management/stage_management_page.dart';

class Hafta1View extends StatelessWidget {
  const Hafta1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("1. HAFTA"),//Sayfa Başlığı
    
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  Widget build(BuildContext context) {
      return  Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

          //Row-Column-Stack Kullanimi için buton oluşturma
            ElevatedButton(
              child: const Text("Row-Column-Stack Kullanimi"),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  const RowColumnStackPage() ));
                },
              ),

            
          //State Management butonu oluşturma
          const SizedBox(height: AppSize.md),
            ElevatedButton(
              child: const Text("State Management"),
              onPressed:  ()
              { 
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  const StageManagementPage() ));
              },
              ),
            ],
          ),
        );
  }
}


