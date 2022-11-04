import 'dart:math';

import 'package:bmi_calculator/BMI_RESULT.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  double height=120.0;
  bool isMale = true;
  int weight = 60;
  int age = 20;
  bool validWeight = true;
  bool validAge = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text(
            'BMI CALCULATOR',

        ),
      ),
      body: Container(
        color: Colors.brown,
        child: Column(

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          onTap: (){
                           setState(() {
                             isMale = true;
                           });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: isMale? Colors.blue:Colors.grey[400]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                    image: AssetImage('images/male.png'),
                                  height: 90,
                                  width: 90,
                                ) ,
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: isMale?Colors.grey[400]:Colors.blue,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('images/female.png'),
                                height: 90,
                                width: 90,
                              ) ,
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                       mainAxisAlignment: MainAxisAlignment.center,
                       textBaseline: TextBaseline.alphabetic,
                       children:  [
                         Text(
                           height.round().toString(),
                           style: TextStyle(
                               fontSize: 40,
                               fontWeight: FontWeight.w900
                           ),
                         ),
                         SizedBox(
                           width: 20.0,
                         ),
                         Text(
                           "CM",
                           style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                       ],
                      ),
                      Slider(
                          value: height ,
                          max: 220.0,
                          min: 50.0,
                          onChanged:(value){
                            setState(() {
                              height=value;
                            });
                          } ,
                      ),
                    ],
                  ),
                ),
              ),
            ),
           Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: validAge? (){
                                  setState(() {
                                    age--;
                                    if(age==1) validAge = false;
                                  });
                                }:null,
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                    if(age>1) validAge = true;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width:20.0 ,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: validWeight? (){
                                  setState(() {
                                    weight--;
                                    if(weight==1) validWeight = false;
                                  });
                                }:null,
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                    if(weight>1) validWeight = true;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
           ),
        Container(
          width: double.infinity,
          color: Colors.blue,
          child: MaterialButton(
            height: 50,
            onPressed: (){
              var result = weight/pow(height/100,2);
              var meaning = 'Under Weight';
              if(result>18.5 && result<25) meaning = 'Normal';
              else if(result<30) meaning='Over Weight';
              else if(result<35) meaning='Obesity Class I';
              else if(result<40) meaning='Obesity Class II';
              else meaning='Extreme Obesity';
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){return BMIResult(result.round(),isMale,meaning);},
                )
              );
            },
           child: const Text(
             "CALCULATE",
             style: TextStyle(
               color:Colors.white,
             ),
           ),
          ),
        )
          ],
        ),
      ),
    );
  }
}
