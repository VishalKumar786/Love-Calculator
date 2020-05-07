import 'dart:math';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> { 
var name1=TextEditingController();
var name2=TextEditingController();
var x="";
String t1,t2;
var num=0;
double min=0;
double max=1;
var z;
double n;
vish(){
t1=name1.text;
t2=name2.text;
if (t1=='' || t2==''){
return;
}
else if(num==1){
  return;
}
else{
 setState(() {
      //name1.text = "";
      //name2.text = "";
     Random rand=Random();
var y=rand.nextInt(30)+70;
z=rand.nextDouble();
n=y+z;
  x=n.toStringAsFixed(2) +"%";
 
  num=1;
   });
}
}
 clear(){
   name1.text="";
   name2.text="";
   setState(() {
     x="";
     num=0;
   });
   

 }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Colors.red[100],
        appBar: AppBar(
          backgroundColor:Colors.transparent,
          title: Text("LoveRelation"),
        ),
        body:
         SingleChildScrollView(
                    child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               
                Padding(
                  padding: const EdgeInsets.only(top:30),
                 child:Image.asset("assets/1.png",
                 fit: BoxFit.fill,
                 height: 200,
                 ), 
                ),
                SizedBox(height:40),
                TextField(
                  controller:name1 ,
                  decoration: InputDecoration(
                    hintText: "Your_Name",
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder:OutlineInputBorder(
                     borderSide:BorderSide(color:Colors.redAccent), 
                    )
                  ),
                ),
                SizedBox(height: 40),
                TextField(
                  controller: name2,
                  decoration: InputDecoration(
                      hintText: "Crush_Name",
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent), 
                      )
                      ),
                ),
                SizedBox(height: 40),
                MaterialButton(
                  color: Colors.redAccent,
                    colorBrightness: Brightness.dark,
                    minWidth: double.infinity,
                    height: 70,
                child: Text("Calculate_Love", textAlign: TextAlign.center,style: TextStyle(fontSize:20)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed:() {
                      vish();
                }),
                SizedBox(height:40),
                    MaterialButton(
                  color: Colors.redAccent,
                    colorBrightness: Brightness.dark,
                    minWidth: double.infinity,
                    height: 70,
                child: Text("Reset", textAlign: TextAlign.center,style: TextStyle(fontSize:20)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed:(){
                      //cont.clear();
                      //vish();
                      clear();
                    }    
                ),
                SizedBox(height:15),
                    Text(
                    x, 
                   style:TextStyle(fontSize:25),
                    )

              ],
            ),
        ),
         ),  
      ),
    );
  }
}

