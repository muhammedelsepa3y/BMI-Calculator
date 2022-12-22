import 'package:flutter/material.dart';

import '../modules/calculator/BMI_screen.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset("Assets/logo.jpg",height: 150,width: 150,),
                SizedBox(height: 15,),
                Text("BMI Calculator",style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900
                ),),
                SizedBox(height: 30,),
              ],),
            ),


            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                height: 70,
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BMI_Screen()));
                  });
                },
                child: Text(
                  "Start App",
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
