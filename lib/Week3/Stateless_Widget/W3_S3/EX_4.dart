import 'package:flutter/material.dart';
void main(){
  runApp(  MaterialApp(
    home: Scaffold(
      body:Padding(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
        children: [
         CustomCard(text: 'OOP', color: Colors.blue[100]!),
         CustomCard(text: 'DART', color: Colors.blue[300]!),
         CustomCard(text: 'FLUTTER', color: Colors.blue[600]!),
        ],
        ),
      ),
      
    ),

  ));
}

class CustomCard extends StatelessWidget {
  final String text;
  final  Color color;
  const CustomCard(
   {
    required this.text,
    this.color = Colors.blue,
      super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
      decoration:  BoxDecoration(
        color:  color,
        borderRadius: BorderRadius.circular(30),
      ),
      child:  Center(
        child: Text(
          text,
          style:const  TextStyle(
            color:  Colors.white, fontSize: 20,
          ),
        ),
      ),
    );
  }
}