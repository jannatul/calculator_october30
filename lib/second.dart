import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  num myResult = 0;
  num myDifference=0;
  TextEditingController firstNumber = TextEditingController();
  TextEditingController secondNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('jannatul'),),
      body: Column(
        children: [
          TextField(controller: firstNumber,),
          TextField(controller: secondNumber,),
          TextButton(onPressed: () {
            setState(() {
              myResult= int.parse(firstNumber.text)+int.parse(secondNumber.text);
            });
          }, child: Text('full number')),
          Text('total:  $myResult'),
          TextButton(onPressed: () {
            setState(() {
              myDifference= int.parse(firstNumber.text)-int.parse(secondNumber.text);
            });
          }, child: const Text('Difference')),
          Text('total:  $myDifference')


        ],
      ),

    );
  }
}