import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  double result;
  String state = '';

  BmiResult(this.result);

  @override
  Widget build(BuildContext context) {
    state = result < 18.5 ? 'Underweight'
        : result >= 18.5 && result <= 24.9 ? 'Normal'
        : result >= 25 && result <= 29.9 ? 'Overweight' : 'Obese';

    String bmi = result.toStringAsFixed(1);


    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result',),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(64, 64, 64, 1),
      ),
      body: Container(
        color: Color.fromRGBO(24, 24, 24, 1),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              state,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
            ),

            SizedBox(height: 20.0,),

            Text(
              'Your BMI: ' + bmi,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0

              ),
            ),
          ],
        ),
      ),
    );
  }
}
