

import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {
  double res;
  int ag;
  bool male;
  BMI_Result(this.res,this.male,this.ag);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gender : ${male?"Male":"Female"}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Result : ${res.round()}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Age : $ag',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
              ],),
            ),




            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                height: 70,
                onPressed: () {

                    Navigator.pop(context);

                },
                child: Text(
                  "Go Back",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
