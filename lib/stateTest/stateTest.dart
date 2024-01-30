import 'package:flutter/material.dart';

void main() {
  runApp(const stateTest());
}

class stateTest extends StatefulWidget {
  const stateTest({super.key});

  @override
  State<stateTest> createState() => _stateTestState();
}

class _stateTestState extends State<stateTest> {
  List<int> numbers = [];

  void onClick() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme : TextTheme(titleLarge: TextStyle(color: Colors.red),)
      ),
        home: Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Click Count',
              style: TextStyle(fontSize: 30),
            ),
            for(var n in numbers) Text(
              '$n',
              style: TextStyle(fontSize: 30),
            ),
            IconButton(
                onPressed: onClick,
                icon: Icon(
                  Icons.add_box_rounded,
                  size: 40,
                )),
          ],
        ),
      ),
    ));
  }
}
