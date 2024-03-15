// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyGesture extends StatefulWidget {
  const MyGesture({super.key});

  @override
  State<MyGesture> createState() => _MyGestureState();
}

class _MyGestureState extends State<MyGesture> {

  String escolha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(children: [
        GestureDetector(
          child:Image.asset('assets/images/flor.avif', height: 150,),
          onTap: (){
            escolha = "de uma flor";
            setState(() {
              
            });
          },
        ),
        SizedBox(height: 20,),
        GestureDetector(
          child:Image.asset('assets/images/folha.avif', height: 150,),
          onTap: (){
            escolha = "de uma folha";
            setState(() {
              
            });
          },
        ),
        SizedBox(height: 20,),
        Text('A imagem escolhida é ' + escolha),
        SizedBox(height: 20,),
        Image.asset('assets/images/praia.jpg', height: 150,),
      ],)),
    );
  }
}