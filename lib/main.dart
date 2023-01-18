import 'package:flutter/material.dart';

void main() {
  runApp(const Bmi());
}

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  TextEditingController _height=TextEditingController();
  TextEditingController _weight=TextEditingController();
  double g=0;

  void sum(){
    double f=double.parse(_height.text);
    double d=double.parse(_weight.text);
    double c=d/(f*f);
    g=c;
    setState(() {
      g=c;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Container(
            child: Center(child: Text("BMI CALCULATOR",style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ),
      ),
        body: Column(children: [
          SizedBox(height: 300,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:_height,
              decoration: InputDecoration(
                labelText: "height",
                border: OutlineInputBorder(),
                icon: Icon(Icons.height),

              ),
              ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _weight,


              decoration: InputDecoration(
                labelText: "weight",
                border: OutlineInputBorder(),
                icon: Icon(Icons.line_weight),

              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (
              ){
            sum();

          }, child: Text("Calculate")),
          SizedBox(height: 30,),
          Text("${g.toStringAsFixed(3)}"
            ,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
          


        ],),
      ),
    );
  }
}
