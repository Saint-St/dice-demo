import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center (child: Text('The Dicee Game')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class  DicePage extends StatefulWidget {



  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  int rightDiceNumber=1;

  @override
  Widget build(BuildContext context) {
    leftDiceNumber;
    rightDiceNumber;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(onPressed: () {
                  if (kDebugMode) {
                   setState(() {
                     leftDiceNumber = Random().nextInt(6) + 1;
                     rightDiceNumber = Random().nextInt(6) + 1;
                   });
                  }
                },
                    child: Image.asset('images/dice$leftDiceNumber.png')),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(onPressed: () {
                  if(kDebugMode){
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });

                  }

                },
                    child: Image.asset('images/dice$rightDiceNumber.png')),
              ),
            )

          ],
        ),
      ),
    );
  }
}


