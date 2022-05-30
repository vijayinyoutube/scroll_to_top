import 'package:flutter/material.dart';
import 'package:scroll_to_top/scroll_to_top.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scroll To Top',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scroll to top")),
      body: ScrollToTop(
        scrollController: _scrollController,
        child: buildListView(_scrollController),
      ),
    );
  }

  Widget buildListView(ScrollController scrollController) => ListView.builder(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        itemCount: 50,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 20,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.5),
                  color: Colors.green[100],
                ),
                child: Center(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Index $index"),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
}
