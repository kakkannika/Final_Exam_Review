import 'package:flutter/material.dart';
enum Product{
    Dart(
        title: "Dart",
        description: "the best object language",
        image: "assets/images/dart.png",
      ),
    Flutter(
        title: "Flutter",
        description: "the best mobile widet library",
        image: "assets/images/flutter.png",
        
    ),
    Firebase(
        title: "Firebase",
        description: "the best cloud database",
        image: "assets/images/firebase.png",
        
    );
    final String title;
    final  String description;
    final String image;

    const Product({
        required this.title,
        required   this.description,
        required  this.image,
    });
}
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
          children: 
            Product.values.map((product)=> ProductCard(product: product)).toList(),
        ),

        


      
      
      ),
      
    ),
    
      
  ));
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),

      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 20),
      child:  Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
        const  Padding(
            padding:  EdgeInsets.all(8.0) ),
            Image.asset(
              product.image,
              width:80,
              height: 80,
              fit: BoxFit.contain,
            ),
           Text(
            product.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            
          ),
          Text(
            product.description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          )
        ],

        
        
        

      ),

      
      


    
    );
  }
}