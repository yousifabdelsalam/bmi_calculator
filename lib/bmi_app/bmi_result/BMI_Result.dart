import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {

  final bool Gender;
  final double Result;
  final int Age;

  BMI_Result({required this.Gender ,required this.Result ,required this.Age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('bmi Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Gender? 'Male' : 'Female'}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
            Text('Result: ${Result.round()}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
            Text('Age: ${Age.round()}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
          ],
        ),

       )
    );
  }
}
