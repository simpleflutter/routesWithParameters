import 'package:flutter/material.dart';
import 'package:test_app/employee.dart';

class Page2 extends StatelessWidget {
  final Employee employee;

  Page2({this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page2')),
      body: Column(
        children: <Widget>[
          Text('Name=${employee.name}'),
          Text('Salary=${employee.salary}'),
          Text('Post=${employee.post}'),
        ],
      ),
    );
  }
}
