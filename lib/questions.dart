import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

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
            SizedBox(
              height: 200,
            ),
            Container(
              width: 400,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                'Is your cat a dog?',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            SizedBox(
              height: 225,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(color: Colors.black),
              child: TextButton(
                onPressed: null,
                child: Text(
                  'YES',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.black),
              child: TextButton(
                onPressed: null,
                child: Text(
                  'NO',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ),
            SizedBox(height: 100,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: 450,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
