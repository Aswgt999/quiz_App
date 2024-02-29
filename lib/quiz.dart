


import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  List _question = [
    Quiz('Car has 4 wheels.', true),
    Quiz('Bike has 3 wheels.', false),
    Quiz('Sharks are mammals.', false),
    Quiz('The blue whale is the biggest animal to have ever lived.', true),
    Quiz('The hummingbird egg is the worlds smallest egg.', true),
    Quiz('Bats are blind.', false),
    Quiz('An ant can lift 1000 times its body weight.', false),
    Quiz('Herbivores are animal eaters.', false),
    Quiz('The Atlantic Ocean is the biggest ocean on Earth.', false),
    Quiz('Mount Everest is the tallest mountain in the world.', false),
  ];

  int qNo = 0;

  String result = '';

  List<Icon> ansList = [Icon(Icons.check, color: Colors.green,),];

  void next() {
    if (qNo < _question.length) {
      qNo++;
    }
  }
  
  void checkAns(bool check) {
    if (check == _question[qNo].ans) {
      result = 'correct';
    } else {
      result = 'wrong';
    }
  }
  // void matchYes() {
  //   if (_question[q_no].ans == true) {
  //     check = 1;
  //   }else {
  //     check = 0;
  //   }
  // }
  // void matchNo() {
  //   if (_question[q_no].ans == false) {
  //     check = 1;
  //   }else {
  //     check = 0;
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),

            // The question field
            Container(
              padding: EdgeInsets.all(20),
              width: 400,
              height: 200,
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                _question[qNo].que,
                style: const TextStyle(color: Colors.black, fontSize: 20),

              ),
            ),
            const SizedBox(
              height: 225,
            ),

            // the yes button
            Container(
              width: 200,
              height: 45,
              decoration: const BoxDecoration(color: Colors.grey),
              child: TextButton(
                onPressed:() {
                  setState(() {
                    checkAns(true);// compare answer to true
                    next(); // to next question
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                child: const Text(
                  'YES',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),

            // the no button
            Container(
              width: 200,
              height: 50,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.grey),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    checkAns(false);
                    next();
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                child: const Text(
                  'NO',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 100,),



            // the cross field
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: 450,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(color: Colors.black),
              child: Row(
                children: ansList ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
