import 'package:flutter/material.dart';
import 'package:test_app/employee.dart';
import 'package:test_app/student.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text('Goto Page1'),
              onPressed: () {
                Student s =
                    Student(rollno: 101, name: 'Satish', percentage: 67.54);
                Navigator.pushNamed(context, '/p1', arguments: s);
              },
            ),
            RaisedButton(
              child: Text('Goto Page2'),
              onPressed: () {
                Employee e =
                    Employee(name: 'Kiran', salary: 30000, post: 'Cerk');
                Navigator.pushNamed(context, '/p2', arguments: e);
              },
            )
          ],
        ),
      ),
    );
  }
}
