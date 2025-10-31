import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/BMI_Result.dart';


class BMI extends StatefulWidget {
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  bool isMale = true;
  double height = 120;
  int weight = 60;
  int age = 20;
  double Result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 15, 30, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 15, 30, 1.0),
        title: Center(
          child: Text(
            'bmi Calculator',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromRGBO(10, 15, 30, 1.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: (){
                        isMale = true;
                        setState(() {

                        });
                        },
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isMale?  Colors.red : Color.fromRGBO(16, 19, 35, 1.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male, color: Colors.white, size: 100),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: (){
                          isMale = false;
                          setState(() {

                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: !isMale? Colors.red : Color.fromRGBO(16, 19, 35, 1.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female, color: Colors.white, size: 100),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(16, 19, 35, 1.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'CM',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 220,
                      min: 80,
                      onChanged: (value) {
                        setState(() {
                           height = value;
                        });
                        print(value.round());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromRGBO(10, 15, 30, 1.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.blueAccent,
                              heroTag: 'Weight--',
                              mini: true,
                              shape: CircleBorder(),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.blueAccent,
                              heroTag: 'Weight++',
                              mini: true,
                              shape: CircleBorder(),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          '${age.round()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.blueAccent,
                              mini: true,
                              heroTag: 'AGE--',
                              shape: CircleBorder(),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.blueAccent,
                              mini: true,
                              heroTag: 'AGE++',
                              shape: CircleBorder(),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            child: MaterialButton(
              color: Colors.redAccent,
              onPressed: () {
                Result = weight / pow(height / 100, 2);
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => BMI_Result(Gender: isMale,Result: Result,Age: age,) )
                );
              },
              child: Text(
                'bmi Calculator',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
