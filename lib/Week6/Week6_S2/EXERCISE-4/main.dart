import 'package:flutter/material.dart';
import '../EXERCISE-4/joke.dart'; // Import joke.dart

// Define a custom app color
Color appColor = Colors.green[300] as Color;

void main() {
  runApp(const FavoriteJokesApp());
}

class FavoriteJokesApp extends StatefulWidget {
  const FavoriteJokesApp({super.key});

  @override
  State<FavoriteJokesApp> createState() => _FavoriteJokesAppState();
}

class _FavoriteJokesAppState extends State<FavoriteJokesApp> {
  late List<Joke> jokes; // List of jokes

  @override
  void initState() { // Corrected method name from iniState to initState
    super.initState();
    jokes = getJokes(); // Initialize the jokes list from joke.dart
  }

  void toggleFavorite(int index) {
    setState(() {
      // Reset all jokes to not favorite
      for (var joke in jokes) {
        joke.isFavorite = false;
      }
      // Set the selected joke as favorite
      jokes[index].isFavorite = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: ListView.builder(
          itemCount: jokes.length, // Number of jokes
          itemBuilder: (context, index) {
            final joke = jokes[index];
            return ListTile(
              title: Text(
                joke.title,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(joke.description),
              trailing: IconButton(
                icon: Icon(
                  joke.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: joke.isFavorite ? Colors.red : Colors.grey,
                ),
                onPressed: () => toggleFavorite(index), // Toggle favorite joke
              ),
            );
          },
        ),
      ),
    );
  }
}
