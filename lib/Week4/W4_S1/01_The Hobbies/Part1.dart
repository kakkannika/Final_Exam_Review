  import 'package:flutter/material.dart';

void main(){
    runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The hobbies'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding:EdgeInsets.all(30),
          child:Column(
            children:<Widget> [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(30),
                child:const  Center(
                  child: Row(

                    children: <Widget>[
                      Padding(
                        padding:EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                          
                        ),
                        
                        
                       ),
                       
                       Text('Travelling',
                       style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                       ),)
                    ],

                  ),
                ),

                

              )
            ],
          ) ,
          ),
          
      ),

    ));
    
    

    
  }