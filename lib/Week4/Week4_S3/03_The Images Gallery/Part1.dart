import 'package:flutter/material.dart';

void main(){
  runApp(ImageGallery());
}

class ImageGallery extends StatelessWidget {
  const ImageGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Viewer'),
          backgroundColor: Colors.green[400],
          actions:  <Widget>[
            IconButton(
              onPressed:(){

              }, icon: Icon(Icons.navigate_before),
              tooltip: 'Go to the privious images',
              ),
             
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                  child: IconButton(
                    icon: const Icon(Icons.navigate_next),
                    tooltip: 'Go to the next image',
                    onPressed: (){

                    },
                  ),
              )
          ],
        ),
          body: Center(
          child: Text('Image display area'), // Placeholder content
        ),
      ),
    
    );
  }
}