// jokes.dart

class Joke {
  final String title;
  final String description;
  bool isFavorite;

  Joke({
    required this.title,
    required this.description,
    this.isFavorite = false, // Default: not a favorite
  });
}

// Function to generate a list of jokes
List<Joke> getJokes() {
  return List.generate(
    20,
    (index) => Joke(
      title: "title $index",
      description: "description $index.",
    ),
  );
}
