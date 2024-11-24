import 'package:flutter/material.dart';
import 'package:odev/ui/view/hafta_1/row_column_stack_page.dart';
import 'package:odev/ui/view/hafta_1/state_management/stage_management_page.dart';

void main() {
  runApp(const Hafta1View());
}

class Hafta1View extends StatelessWidget {
  const Hafta1View({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: const MyHomePage(),
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

    return Scaffold(
      appBar: AppBar(
      title: const Text("1. HAFTA"),//Sayfa Başlığı
    
      ),


      body:  Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

          //Row-Column-Stack Kullanimi için buton oluşturma
          const SizedBox(height: AppSize.md),
            ElevatedButton(
              child: const Text("Row-Column-Stack Kullanimi"),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Page2() ));
                },
              ),

            
          //State Management butonu oluşturma
          const SizedBox(height: AppSize.md),
            ElevatedButton(
              child: const Text("State Management"),
              onPressed:  ()
              { 
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Page1() ));
              },

              ),
            ],
          ),
        ),
    );
  }
}

// sabit boyutlar
class AppSize {
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 32.0;
  static const double xl = 64.0;
}