import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 4, 5];
  final List<String> words = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Slavin Sergey'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 5,
                      width: 50,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Text(
                        numbers[index].toString(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: words.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(words[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
