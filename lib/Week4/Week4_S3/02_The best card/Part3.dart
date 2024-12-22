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
              
              ),
              FavoriteCard(
              title: 'Title1',
               description: 'Description1', 
               
              ),
              FavoriteCard(
              title: 'Title3',
               description: 'Description3', 
              
              ),

          ],
        ),
      ),
     )
  ));
}

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;
  const FavoriteCard({
     required this.title,
     required this.description,

    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;
  void toggleFavorite(){
    setState(() {
      isFavorite = ! isFavorite;
    });
  }
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
                  IconButton(
                    icon: Icon( isFavorite ? Icons.favorite_border : Icons.favorite_border,
                   color: isFavorite ? Colors.red: Colors.grey,),
                    onPressed : toggleFavorite,
                  
                  
                  ),
                 
                  
                  ], 
              
              ),
            
    
    );
  }
}