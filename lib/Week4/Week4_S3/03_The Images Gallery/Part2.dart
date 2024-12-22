import 'package:flutter/material.dart';

List<String> images = [
  "assets/images/bird.jpg",
  "assets/images/bird2.jpg",
  "assets/images/insect.jpg",
  "assets/images/girl.jpg",
  "assets/images/man.jpg",
];

void main() => runApp(ImageGallery());

class ImageGallery extends StatefulWidget {
@override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  int currentIndex = 0;
  void showPreviousImage(){
    setState(() {
      currentIndex = (currentIndex - 2 + images.length)%images.length;
    });
  }
   void showNextImage(){
    setState(() {
      currentIndex =(currentIndex + 2 + images.length)%images.length;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
          home: Scaffold(
            backgroundColor: Colors.green[50],
            appBar: AppBar(
              backgroundColor: Colors.green[400],
              title: const Text('Image viewer'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.navigate_before),
                  tooltip: 'Go to the previous image',
                  onPressed: showPreviousImage,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                  child: IconButton(
                    icon: const Icon(Icons.navigate_next),
                    tooltip: 'Go to the next image',
                    onPressed: showNextImage,
                  ),
                ),
              ],
            ),
           body: Center(
            child: Image.asset(
              images[currentIndex],
              fit: BoxFit.cover,
            ),
           ),
          ),
        );
  }
}

