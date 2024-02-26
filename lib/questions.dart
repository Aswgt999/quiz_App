
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              width: 400,
              height: 200,
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.black),
              child: const Text(
                'Is your cat a dog?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 225,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: const BoxDecoration(color: Colors.black),
              child: TextButton(
                onPressed: null,
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
            Container(
              width: 200,
              height: 50,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.black),
              child: TextButton(
                onPressed: null,
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: 450,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(color: Colors.black),
              child: const Row(
                children: [
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                  Icon(Icons.close_sharp, color: Colors.grey,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
