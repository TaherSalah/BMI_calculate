import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BmiResult extends StatelessWidget {
  double result;
  int age;
  bool isMale;
  BmiResult({Key? key,
    required this.result,
    required this.age,
    required this.isMale
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  const Text(
            'BMI Result'
        ),
        leading: IconButton(icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: (){
            Navigator.pop(context);
          },),
      ),
      backgroundColor: Colors.black45,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: isMale ? Colors.blue : Colors.amber,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Gender:${isMale?'Male':'female'}',
                textAlign: TextAlign.end,
                style: const TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,),
              ),
              Text(
                'Result:${result.round()}',
                style: const TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,),

              ),
              Text(
                'age:$age',
                style: const TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,),

              ),

            ],
          ),
        ),
      ),

    );
  }
}
