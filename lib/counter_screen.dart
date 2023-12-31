import 'package:flutter/material.dart';

class counter_screen extends StatefulWidget {
  @override
  State<counter_screen> createState() => _counter_screenState();
}

class _counter_screenState extends State<counter_screen>  {
  int counter=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
                  counter--;
                  print(counter);
                }, child:Text(
              'Minus'
            ) ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                  '$counter',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
                onPressed: (){
                  counter++;
                  print(counter);
                }, child:Text(
                'Plus'
            ) ),
          ],
        ),
      ),
    );
  }
}
