import 'package:flutter/material.dart';

enum ButtonType{
  primary,
  secondary,
  disabled,
   
}
enum IconPosition{
  left, right
}
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Custom Button'),
        
      ),
      
      body: const Padding(
         padding:EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomButtons(
              Label: 'Submit', 
              icon:Icons.check,
               buttonType:ButtonType.primary,
               iconPosition: IconPosition.left
            ),
            SizedBox(height: 25),
            CustomButtons(
              Label: 'Time',
              icon: Icons.access_time, 
              buttonType: ButtonType.secondary,
              iconPosition: IconPosition.right,
            ),
            SizedBox(height: 25),
             CustomButtons(
              Label: 'Account',
              icon: Icons.account_tree, 
              buttonType: ButtonType.disabled,
              iconPosition: IconPosition.right,
              )
          ],
              
        
        ),
      ),
    ),
    


  ));
}

class CustomButtons extends StatelessWidget {
  final String Label;
  final  IconData icon;
  final IconPosition iconPosition;
  final ButtonType buttonType;
  const CustomButtons({
    required this.Label,
    required this.icon,
    this.iconPosition = IconPosition.left,// default is left
    required this.buttonType,
     
    super.key,
  });

  Color _getColor(){
    switch(buttonType){
      case ButtonType.primary:
      return Colors.blue;
      case ButtonType.secondary:
      return Colors.green;
      case ButtonType.disabled:
      return Colors.grey;
    }
  }



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: _getColor(),
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        
      
      ),
      
      onPressed: buttonType==ButtonType.disabled ? null: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: iconPosition == IconPosition.left ?[
          Icon(icon,size: 20),
          SizedBox(width:8),
          Text(Label),


        ]:[
          Text(Label),
           SizedBox(width:8),
          Icon(icon,size: 20)
        ],
      ),
      


    
    );
  }
}