import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

// just dart class property
class _AppState extends State<App> {
  // int counter = 0;
  List<int> numbers = [];

  void onClicked() {
    /* method 1 (recommended)
    setState(() {
      counter = counter + 1;
    });
    */

    /* method 2
    counter = counter + 1;
    setState(() {});
    */

    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              /*
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              */
              for (var n in numbers) Text('$n'),
              IconButton(
                  iconSize: 40,
                  onPressed: onClicked,
                  icon: const Icon(Icons.add_box_rounded)),
            ],
          ),
        ),
      ),
    );
  }
}
