import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text('Favorite Cards'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            FavoriteCard(
              title: 'Title1',
               description: 'Description1', 
               isFavorite: true,
              ),
              FavoriteCard(
              title: 'Title1',
               description: 'Description1', 
               isFavorite: false,
              ),
              FavoriteCard(
              title: 'Title3',
               description: 'Description3', 
               isFavorite: true,
              ),

          ],
        ),
      ),
     )
  ));
}

class FavoriteCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isFavorite;
  const FavoriteCard({
     required this.title,
     required this.description,
     required this.isFavorite,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
         padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border:Border(
                  bottom: BorderSide(color: Colors.grey, width: 1)
                ),

              ),
              child:  Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('tittle',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 4,),
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ),
                  Icon(
                    isFavorite ? Icons.favorite_border: Icons.favorite_border,
                    color:  isFavorite ? Colors.red : Colors.grey,
                  
                  ),
                  ], 
              
              ),
            
    
    );
  }
}