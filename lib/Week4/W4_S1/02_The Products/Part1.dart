
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar:  AppBar(
        title: Text('Products'),
        backgroundColor: Colors.pink[50],
      
      ),
      

      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),

        
        
        child: Column(
          children: [
          Container(
            width:400,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),

            ),
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(8.0)),
                Image.asset(
                  'assets/images/dart.png',
                  
                  width:80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
               const  Text( 'Dart',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                ),
                Text('the best object language',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),),
                
              
              ],
              
             
            ),
            
            


            ),
          
          

          ], 
        
           
          
          ),
      
         
              
              
             
             

        
          
          
          
          
          
        
        
      ),
    ),

  ));
  
}