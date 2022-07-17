import 'dart:math';


import 'package:flutter/material.dart';

import '../result/bmi_result.dart';

class BMI_Screen extends StatefulWidget {
  const BMI_Screen({Key? key}) : super(key: key);

  @override
  State<BMI_Screen> createState() => _BMI_ScreenState();
}

class _BMI_ScreenState extends State<BMI_Screen> {
  void initState(){
    super.initState();

  }
  bool isMale=true;



  int height=120;
  int age=20;
  int weight=60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR"
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(

                    onTap: (){
                      setState((){
                        isMale=true;

                      });

                    },
                    child: Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:isMale?Colors.blue:Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 70,
                              height: 70,
                              child: Image.asset("male.png")),
                          SizedBox(height: 15,),
                          Text("MALE",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      isMale=false;
                    },
                    child: Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:isMale?Colors.grey[400]:Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 70,
                              height: 70,
                              child: Image.asset("female.png")),
                          SizedBox(height: 15,),
                          Text("FEMALE",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),)
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.grey[400],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("$height",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900
                    ),),
                    SizedBox(width: 5,),
                    Text("CM",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900
                    ),),
                  ],),
                  Slider(
                      value: height.roundToDouble(),
                      max: 220,
                      min: 80,
                      onChanged: (value){
                        setState((){
                          height=value.round();
                          print(value.round());
                        });
                        }
                  )

                ],
              ),
            ),
          )

        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Colors.grey[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("$age",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,children: [

                          FloatingActionButton(
                            heroTag: "ag-",
                            mini:true,
                              onPressed: (){
                                setState(
                                    (){
                                      age--;
                                    }
                                );
                              },
                            child: Icon(Icons.remove),
                          ),
                          SizedBox(width: 5,),
                          FloatingActionButton(
                            heroTag: "ag+",
                            mini: true,
                              onPressed: (){
                                setState(
                                    (){
                                      age++;
                                    }
                                );
                              },
                            child: Icon(Icons.add),
                          ),
                        ],)

                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Colors.grey[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Weight",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("$weight",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,children: [

                          FloatingActionButton(
                            heroTag: "we-",
                            mini:true,
                            onPressed: (){
                              setState(
                                      (){
                                    weight--;
                                  }
                              );
                            },
                            child: Icon(Icons.remove),
                          ),
                          SizedBox(width: 5,),
                          FloatingActionButton(
                            heroTag: "we+",
                            mini: true,
                            onPressed: (){
                              setState(
                                      (){
                                   weight++;
                                  }
                              );
                            },
                            child: Icon(Icons.add),
                          ),
                        ],)

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
            height: 60,
            onPressed: (){
              setState((){
                var result=weight/pow(height/100,2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>BMI_Result(result,isMale,age),
                    ) ,
                );
              });
            },
          child: Text("Calculate",style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),),
        )
      ]),
    );
  }

}
