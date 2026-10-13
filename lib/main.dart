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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Icon Widget Demo'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // 1. Basic Icon
              const Text('1. A Basic Icon', style: TextStyle(fontWeight: FontWeight.bold)),
              const Icon(Icons.favorite),
              const SizedBox(height: 20),

              // 2. Icon with color and size
              const Text('2. Icon with Color and Size', style: TextStyle(fontWeight: FontWeight.bold)),
              const Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 50,
              ),
              const SizedBox(height: 20),

              // 3. Row of different icons, different sizes and also colors
              const Text('3. A Row of Icons', style: TextStyle(fontWeight: FontWeight.bold)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Favorite heart icon',
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.beach_access,
                    color: Colors.blue,
                    size: 36.0,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // 4. Icon vs IconButton (interactive)
              const Text('4. Icon vs IconButton', style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    children: [
                      Icon(Icons.star, size: 40, color: Colors.orange),
                      Text('Just an Icon\n(not clickable)', textAlign: TextAlign.center),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.star, size: 40, color: Colors.orange),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('You tapped the star! ')),
                          );
                        },
                      ),
                      const Text('IconButton\n(clickable)', textAlign: TextAlign.center),
                    ],
                  ),
                ],
              ),
            ],
          ), 
        ),
      ),
    );
  }
}
