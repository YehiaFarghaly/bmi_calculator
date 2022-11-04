import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final int result;
  final bool isMale;
  final String meaning;
  BMIResult(this.result,this.isMale,this.meaning);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "BMI RESULT",
        ),
      ),
      body: Container(
        color: Colors.brown,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender : ${isMale?'Male':'Female'}',
              style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('Result : $result',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(meaning,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0,),
                  color: Colors.black
                ),
                child: MaterialButton(
                  textColor: Colors.white,
                  child: Text("Calculate Another Value",
                  style:TextStyle(
                    fontSize: 25,
                  ),
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
