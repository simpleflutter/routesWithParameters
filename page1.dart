import 'package:flutter/material.dart';
import 'student.dart';

class Page1 extends StatelessWidget {
  final Student student;

  Page1({this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page1')),
      body: Column(
        children: <Widget>[
          Text('Rollno=${student.rollno}'),
          Text('Name=${student.name}'),
          Text('Percentage=${student.percentage}')
        ],
      ),
    );
  }
}
