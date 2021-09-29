import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> status = List.generate(5, (index) {
    return SizedBox(
        child: Row(children: [
      const SizedBox(
        width: 20,
        height: 10,
      ),
      CircleAvatar(
          backgroundColor: Colors.grey.shade300, child: const Text("A")),
      const SizedBox(
        width: 15,
        height: 10,
      )
    ]));
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(children: [
            const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
            const SizedBox(
              width: 110,
            ),
            Text(
              widget.title,
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              width: 100,
            ),
            const Icon(Icons.chat_bubble_outline, color: Colors.black)
          ])),
      body: Column(
        children: [
          SizedBox(
            height: 70,
            child: Card(
                child: Row(children: [
              ...status,
            ])),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Card(
                    child: Column(children: [
                  Row(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        child: const Text("A"),
                        radius: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Insta Post",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      const SizedBox(
                        width: 230,
                      ),
                      const Icon(Icons.more_horiz),
                    ],
                  ),
                  Column(
                    children: const [
                      SizedBox(
                          height: 300, child: Center(child: Text("Image 1"))),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 12,
                      ),
                      Icon(Icons.favorite_border_outlined),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(Icons.chat_bubble_outline_outlined),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 240,
                      ),
                      Icon(Icons.bookmark_outline)
                    ],
                  ),
                  const SizedBox(width: 30, height: 10)
                ])),
              ],
            ),
          ),
          const SizedBox(height: 155),
          SizedBox(
              width: double.maxFinite,
              child: Card(
                elevation: 0,
                child: Row(children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.home_outlined, size: 35),
                  const SizedBox(
                    width: 45,
                  ),
                  const Icon(Icons.search, size: 35),
                  const SizedBox(
                    width: 45,
                  ),
                  const Icon(Icons.add_box_outlined, size: 35),
                  const SizedBox(
                    width: 45,
                  ),
                  const Icon(Icons.favorite_outline, size: 35),
                  const SizedBox(
                    width: 45,
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey.shade300,
                    child: const Text("A"),
                  ),
                ]),
              ))
        ],
      ),
    );
  }
}
