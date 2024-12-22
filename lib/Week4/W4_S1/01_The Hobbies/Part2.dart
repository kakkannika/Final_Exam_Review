  import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('The hobbies'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const  Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        

        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HobbyCard(title: 'Travelling', icon: Icons.travel_explore_outlined, backgroundColor: Colors.green,),
            HobbyCard(title: 'Skating', icon: Icons.skateboarding, backgroundColor: Colors.blueGrey),
          ],
        ),),
    ),

  ));
   
    

    
  }

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData  icon;
 final  Color backgroundColor;
  const HobbyCard({
    required this.title,
    required this.icon,
    this.backgroundColor = Colors.blue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),

      ),
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Padding(
           padding: EdgeInsets.only(left: 30, right: 20),
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
         
            
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              
            ),
          )
        ],
      ),

     
      
    
              
    );
  }
}