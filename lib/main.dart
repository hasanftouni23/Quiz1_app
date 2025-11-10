import 'package:flutter/material.dart';

void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: QuizScreen());
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int tired = 0;
  int angry = 0;
  int happy = 0;
  String result = '😂';

  VoidCallback? get presshappy => null;

  set(happy) {}
  // ignore: non_constant_identifier_names
  void Presshappy() {
    setState(() {
      result = '😂 Correct';
      happy++;
    });
  }

  void presstired() {
    setState(() {
      result = '😒 correct';
      tired++;
    });
  }

  void pressAngry() {
    setState(() {
      result = '😢 Wrong';
      // ignore: unused_local_variable
      var Angry;
      Angry++;
    });
  }

  void reset() {
    setState(() {
      happy = 0;
      tired = 0;
      angry = 0;
      result = '✔';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('what do you feel 😎'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result: $result',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: presshappy,
              child: const Text('I am Happy 😂'),
            ),
            ElevatedButton(
              onPressed: presstired,
              child: const Text('I am Tired 😒'),
            ),
            ElevatedButton(
              onPressed: pressAngry,
              child: const Text('I am Angry 😢'),
            ),
            const SizedBox(height: 30),
            Text(
              'Happy: $happy | Tired: $tired | Angry: $angry',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
