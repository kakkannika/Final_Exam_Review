import 'package:flutter/material.dart';
void main(){
  runApp(  MaterialApp(
    home: Scaffold(
      body:Padding(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
        children: [
         CustomCard(text: 'Hello1', color: Colors.blue[100]!),
         CustomCard(text: 'Hellp2', color: Colors.blue[300]!),
         CustomCard(text: 'Hello3', 
         gradient:LinearGradient(colors: 
          [
                Color.fromRGBO(108, 152, 235, 1),
                Color.fromRGBO(25, 25, 112, 1.0),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
         ),
        ),
        ],
        ),
      ),
      
    ),

  ));
}

class CustomCard extends StatelessWidget {
  final String text;
  final  Color color;
  final LinearGradient ? gradient;
  const CustomCard(
   {
    required this.text,
    this.color = Colors.blue,
    this.gradient,
    
      super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
      decoration:  BoxDecoration(
        color:  color,
        gradient: gradient,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color:  Colors.white, fontSize: 20,
          ),
        ),
      ),
    );
  }
}