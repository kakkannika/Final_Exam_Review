import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Statefull Widget - Button'
          
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(),
            MyButton(),
            MyButton(),
            MyButton(),
          ],
        ),
        
      ),
    ),

  ));
}

class MyButton extends StatefulWidget {

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isSelected = false;
  void toggleSelection(){
     setState((){
      isSelected = ! isSelected;
      
     });
  }

  Color get _backgroundColor => isSelected ? Colors.blue[500]! : Colors.blue[50]!;
  Color  get _textColor => isSelected ? Colors.white : Colors.black;
  String get text => isSelected ? "Selected ": "Not Selected";
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: 400,
        height: 100,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:  _backgroundColor,

          ),
          onPressed: toggleSelection,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: _textColor, fontSize: 16
              ),
              
            ),
          ),
      ),
      ),
      
    
    );
  }
}