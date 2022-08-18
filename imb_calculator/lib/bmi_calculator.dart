import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:imb_calculator/style.dart';

class BMIcalculator extends StatefulWidget {
   BMIcalculator({Key? key}) : super(key: key);

  @override
  State<BMIcalculator> createState() => _BMIcalculatorState();
}

class _BMIcalculatorState extends State<BMIcalculator> {
  bool isGenderSelected =false;

  double userHeight = 0.0;

  int userAge = 1;
  int userWeight = 1;

  String result = "Result";

  String bmiInterpretation = "";

  calculateBMI(){

   if(userHeight == 0.0 || userWeight ==1){
    ScaffoldMessenger.of(context).showSnackBar(
    const  SnackBar(content: Text("Please select your height and weight"),)
    );

   }else{
    double bmi = userWeight / pow (userHeight,2) *703;
    setState(() {
      result = bmi.toStringAsFixed(2);

      if(bmi <= 18.4) {
        bmiInterpretation = "UnderWeight";

      }else if (bmi >= 18.5 && bmi <= 24.9) {

        bmiInterpretation = "Normal BMI";
    
      }else if (bmi  >= 25.0 && bmi <= 39.9){

        bmiInterpretation = "OverWeight";

      }else if (bmi >=  41.0){
        bmiInterpretation = "Obese";
      }



    });
   }




    
  }

  
  @override
  Widget build(BuildContext context) {
    TextStyle globalTextStyle = Theme.of(context).textTheme.bodyText1!.copyWith(
     fontSize: 65,color: Colors.white,fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5a3794),
        title: Text("BMI CALCULATOR"),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))]
        ),
        drawer: Drawer(),
        body: Container(
          decoration: appGradient(),
          child: Column(
            children: [
              Column(
                children: [
                  Text(result,style:globalTextStyle
                  ),
                  Text(bmiInterpretation ,style: globalTextStyle.copyWith(
                    fontSize: 16,
                    color: const Color(0xffB9ABD2)
                  )
                  ),
                 const Divider(
                    color:  Color(0xffB9ABD2)
                  ),
                  SizedBox(height: 10,)
                  
                  
                ],
              ),
              Expanded(
                child: Row(
                      children: [
                        BmiCard(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Age",style: globalTextStyle.copyWith(fontSize: 16),),

                              Text(userAge.toString(),style: globalTextStyle,),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Color(0xff7d689f),
                                      child: IconButton(onPressed: (){
                                        if(userAge ==1){
                                          setState(() {
                                            userAge = 1;
                                          });
                                        }else{
                                          setState(() {
                                          userAge--;
                                        });
                                        }
                                       
                                      }, icon: const Icon(Icons.remove)),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Color(0xff7d689f),
                                      child: IconButton(onPressed: (){
                                        setState(() {
                                          userAge++;
                                        });
                                        
                                      }, icon: const Icon(Icons.add)),
                                    )
                                  ],
                                  ),
                              )
                            ]
                            ),
                        ),
                        BmiCard(
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Weight(Kg)",style: globalTextStyle.copyWith(fontSize: 16),),

                              Text(userWeight.toString(),style: globalTextStyle,),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Color(0xff7d689f),
                                      child: IconButton(onPressed: (){
                                        if(userAge ==1){
                                          setState(() {
                                            userWeight = 1;
                                          });
                                        }else{
                                          setState(() {
                                          userWeight--;
                                        });
                                        }
                                       
                                        
                                      }, icon: const Icon(Icons.remove)),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Color(0xff7d689f),
                                      child: IconButton(onPressed: (){
                                        setState(() {
                                          userWeight++;
                                        });
                                      }, icon: const Icon(Icons.add)),
                                    )
                                  ],
                                  ),
                              )
                            ]
                            ),
                        ),
                      ],
                    ),
              ),
              BmiCard(
                child: Column(
                  children:[
                    Text("Height",
                    style: globalTextStyle.copyWith(fontSize: 20),
                    ),
                    Slider(
                      min: 0.0,
                      max: 100.0,
                      activeColor: Colors.red,
                      thumbColor: Colors.red,
                      inactiveColor: Colors.grey,
                      value: userHeight, onChanged: (value){
                        setState(() {
                          userHeight = value;
                        });
                      }),
                    Text("${userHeight.toStringAsFixed(2)}cm",style: globalTextStyle,)
                  ]
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      activeColor: Colors.red,
                      title: Text("Female",style: globalTextStyle.copyWith(fontSize: 16,),),
                      value: true, 
                      groupValue: isGenderSelected,
                       onChanged: (bool ?value) {
                        setState(() {
                          isGenderSelected =value!;
                        });
                       }
                       ),
                       ),
                       Expanded(
                    child: RadioListTile(
                      activeColor: Colors.red,
                      title: Text("Male",style: globalTextStyle.copyWith(fontSize: 16),),
                      value: false, 
                      groupValue: isGenderSelected,
                       onChanged: (bool? value) {
                        setState(() {
                          isGenderSelected = value!;
                        });
                       }
                       ),
                       ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    onPressed: (){
                      calculateBMI();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("CALCULATE YOUR BMI",style: globalTextStyle.copyWith(fontSize: 20,),),
                    ),
                    color: Colors.red[600],
                    ),
                ),
              ),
             const SizedBox(height: 20,)
            ]
            ),
          ),
        
    );
    
  }
}

class BmiCard extends StatelessWidget {
   BmiCard({
    Key? key,this.child
  }) : super(key: key);
Widget ?child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xff533282)
        ),
       child: child,
      ),
    );
  }
}