

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
        image: "assets/images/firebase",
        
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