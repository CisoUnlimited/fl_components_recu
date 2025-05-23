import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
          min: 50,
          max: 400,
          value: _sliderValue,
          onChanged: _sliderEnabled ? (value){
            _sliderValue = value;
            setState(() {
              
            });
          }
          :null,
        ),
        Checkbox(
          value: _sliderEnabled,
          onChanged: (value){
            _sliderEnabled = value ?? true;
            setState(() {
              
            });
          },
        )
      ]),
    );
  }
}
