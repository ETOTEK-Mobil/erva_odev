import 'package:flutter/material.dart';

class ProgressSliderBarPage extends StatefulWidget {
  const ProgressSliderBarPage({super.key});


  @override
  State<ProgressSliderBarPage> createState() => _ProgressSliderBarPageState();
}

class _ProgressSliderBarPageState extends State<ProgressSliderBarPage> {

  double _sliderValue = 50.0;
  late  AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
          title: const Text("Progress Slider Bar"),
    ),

    body:Center(
      child: Column(    
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            
        Slider(
              max: 100.0,
              min: 0.0,
              activeColor:   Colors.green,
              inactiveColor: Colors.indigo,
              value: _sliderValue,
              onChanged: (double newValue) {

                setState(() {
                    _sliderValue = newValue;
                  });
              },
          ),
                  Text(" ${ _sliderValue.toInt()}%",style: const TextStyle(fontSize: 20),),
          
          //LinearProgress
          Padding(
              padding: const EdgeInsets.all(40),
              child: LinearProgressIndicator(
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
              value: _sliderValue / 100, //progress 0.0 ile 1.0 arasında değer alabildiği için 100'e böldüm
                    
                    ),
                )
              ]
          )
      ),
    );
  }
}