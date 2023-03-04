import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  Color cardColor = Color.fromRGBO(64, 64, 64, 1);
  bool startChecking = false;
  bool isMale = true;
  double height = 165;
  int weight = 65, age = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(40, 40, 40, 1),
      ),
      body: Container(
        color: Color.fromRGBO(24, 24, 24, 1),

        child: Column(
          children: [
            //Male or Female
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    //Male Box
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            startChecking = true;
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMale & startChecking ? Colors.red[400] : cardColor,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 85.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 20.0,),

                    //Female Box
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            startChecking = true;
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: !isMale & startChecking ? Colors.red[400] : cardColor,
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 85.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
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

            //Height
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Number of height
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          //cm
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10.0,),

                      //slider
                      Slider(
                          activeColor: Colors.red[400],
                          inactiveColor: Colors.white,
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value){
                            setState(() {
                              height = value;
                            });
                          }),
                    ],
                  ),
                ),
              ),
            ),

            //Weight & Age
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    //Weight
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Weight text
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                              ),
                            ),

                            //Number of weight
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.white
                              ),

                            ),

                            //remove & add Buttons

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //remove
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'w-',
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  backgroundColor: Colors.red[400],
                                ),

                                //add
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'w+',
                                  child: Icon(Icons.add),
                                  mini: true,
                                  backgroundColor: Colors.red[400],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 20.0,),

                    //Age
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Weight text
                            Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                              ),
                            ),

                            //Number of weight
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),

                            ),

                            //remove & add Buttons

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //remove
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  backgroundColor: Colors.red[400],
                                  heroTag: 'a-',
                                ),

                                //add
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                  backgroundColor: Colors.red[400],
                                  heroTag: 'a+',
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

            //Calculate Button
            Container(
              width: double.infinity,
              color: Colors.red,
              child: MaterialButton(
              onPressed: (){
                double result;
                double height1 = height / 100;
                result = weight / (height1 * height1);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BmiResult(result)),);
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white
                  ),
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
