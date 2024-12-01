import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({super.key});
  
  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  var tfDate  = TextEditingController();
    var tfClock = TextEditingController();
    var sehirListe = <String>[];
    String secilenSehir = "Adana";//ilk açıldığında gözükecek olan şehir

  @override
        //listeye şehir eklemesi yaptım
        void initState(){
          super.initState();
          sehirListe.add("Adana");
          sehirListe.add("Bursa");
          sehirListe.add("Çorum");
          sehirListe.add("İzmir");
          sehirListe.add("Kayseri");
          sehirListe.add("Tekirdağ");
          sehirListe.add("Samsun");
          sehirListe.add("Van");
        }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("Pickers"),
    ),
      body: Center(
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    const Padding(
                        padding: EdgeInsets.only(left: AppSize.md),
                        child: Text("Şehir Seç:",style: TextStyle( fontSize: AppSize.md,)), ),   
                    
                    //Şehir için dropdownbutton kullanımı
                    Padding(
                      padding: const EdgeInsets.only(left:AppSize.md,right: AppSize.md,bottom:AppSize.md),//
                      child: DropdownButton<String>(
                      isExpanded: true,
                      value: secilenSehir,
                      items: sehirListe.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text("Şehir : $value",style: const TextStyle(color: Colors.deepPurple,fontSize:20),),
                        );
                      }).toList(),

                      icon: const Icon(Icons.arrow_drop_down),
                      
                      onChanged: (String? data){
                        setState(() {
                          secilenSehir = data!;
                        });
                      }),
                    ),



            //ShowTimePicker 
            Padding(
              padding: const EdgeInsets.all(AppSize.md),
              child: TextField(
                    controller: tfClock,
                    decoration: const InputDecoration(
                    labelText: "Zaman Seç",labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),//başlık olarak kullandım
                    suffixIcon: Icon(Icons.access_time),
                    hintText: "Saat Giriniz",
                    border: OutlineInputBorder()
                  ),
                  onTap: (){
                    showTimePicker(
                      context: context, 
                      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                    ). then((getClock) 
                    {
                      setState(() {
                        tfClock.text = "${getClock?.hour}:${getClock?.minute}";
                      });
                    });                 
                  },
              ),
            ),

            
            //ShowDatePicker
            Padding(
              padding: const EdgeInsets.all(AppSize.md),
              child: TextField(
                  controller: tfDate,
                  decoration: const InputDecoration(
                  labelText: "Tarih Seç",labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  hintText: "Tarih Giriniz",
                  suffixIcon: Icon(Icons.calendar_today),
                  border: OutlineInputBorder()
                  ),
                  onTap: (){
                    showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2050),
                    ). then((getDate)
                    
                    {
                      setState(() {
                        tfDate.text = "${getDate?.day}:${getDate?.month} : ${getDate?.year}";
                      });
                    });
              
                  },
              
              ),
            ),

              //seçilen verileri göstermek için container kullandım ama hata aldım çözemedim
              Padding(
                padding: const EdgeInsets.all(AppSize.md),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                   // Text("Seçilen Şehir: $secilenSehir \nSeçilen Zaman: ${tfClock.text} \nSeçilen Tarih: ${tfDate.text}")),
                    
              )
              )
            ],
          ),
      )
    );
}}
