import 'package:flutter/material.dart';
void main(){
  runApp( MaterialApp(
    home: Container(
      padding: EdgeInsets.all(50),
      margin: EdgeInsets.all(40),
      color: Colors.blue[300],
      width: 300,
      height: 800,
      child:  Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(20),

        ),
        child: const Center(
        child: Text('CADT STUDENTS',
        style: TextStyle(
          fontSize: 28,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          
        ),),

        ),
      ),
    ),
  ));
}