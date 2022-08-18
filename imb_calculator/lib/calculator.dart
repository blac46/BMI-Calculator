import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _slider = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading:Icon(Icons.menu),
        title: Text("IBM Calculator"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 380,
                color: Colors.purpleAccent,
                child: Column(
                  children: const [
                    Text("24.0",style: TextStyle(color: Colors.white,fontSize: 70,fontWeight: FontWeight.bold),),
                    Text("Normal IBM",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            const  Divider(
                height: 10,
                color: Colors.white,),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Column(
                      children: [
                        Text("Age",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("21",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black26,
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.remove,color:Colors.white),
                                )
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.black26,
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color:Colors.white),
                                )
                              )
                            ],
                            ),
                        )

                    ]),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Column(
                      children: [
                        Text("Age",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("21",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black26,
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.remove,color:Colors.white),
                                )
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.black26,
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color:Colors.white),
                                )
                              )
                            ],
                            ),
                        )

                    ]),
                  )
                ],

                ),
                SizedBox(height: 10,),
                Container(
                  height: 150,
                  width: 380,
                  color: Colors.purple,
                  child: Column(
                    children: [
                      const Text(
                        "Height",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                       const SizedBox(height: 15,),
                      Slider(
                        thumbColor: Colors.red,
                        activeColor: Colors.white,
                        inactiveColor: Colors.grey,
                        value: this._slider, onChanged: (double value) {
                        setState(() => this._slider =value  
                        );
                      }),
                      const Text("179 cm",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
                    ]
                    ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      color: Colors.purple,
                      child: Row(
                        children:[
                          IconButton(onPressed: (){}, icon: Icon(Icons.circle,color: Colors.purpleAccent,)),
                           SizedBox(width:15,),
                           Text("Female",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                        ]
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      color: Colors.purple,
                      child: Row(
                        children:[
                           IconButton(onPressed: (){}, icon: Icon(Icons.circle,color: Colors.white,)),
                           SizedBox(width:15,),
                           Text("Male",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                        ]
                      ),
                    )
                  ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 80,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Center(child: Text("CALCULATE YOU IBM",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  )
                  )
            ]
            ),
        ),
    );
  }
}