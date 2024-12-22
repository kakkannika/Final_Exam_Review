import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ScoreBarScreen(),
    );
  }
}

// Main screen displaying multiple score bars
class ScoreBarScreen extends StatelessWidget {
  const ScoreBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Score in Flutter'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            ScoreCard(subject: 'Flutter'),
            SizedBox(height: 20),
            ScoreCard(subject: 'Dart'),
            SizedBox(height: 20),
            ScoreCard(subject: 'React'),
          ],
        ),
      ),
    );
  }
}

// Stateful widget for an individual score card
class ScoreCard extends StatefulWidget {
  final String subject;

  const ScoreCard({super.key, required this.subject});

  @override
  _ScoreCardState createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  int _score = 1; // Initial score

  // Increment score
  void _incrementScore() {
    if (_score < 10) {
      setState(() {
        _score++;
      });
    }
  }

  // Decrement score
  void _decrementScore() {
    if (_score > 1) {
      setState(() {
        _score--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            'My score in ${widget.subject}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: _decrementScore,
              ),

              
              Text(
                '$_score',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _incrementScore,
              ),
            ],
          ),
          const SizedBox(height: 12),

          ProgressBar(score: _score),
        ],
      ),
    );
  }
}


class ProgressBar extends StatelessWidget {
  final int score;

  const ProgressBar({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
        ),

       
        FractionallySizedBox(
          widthFactor: score / 10, 
          child: Container(
            height: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
