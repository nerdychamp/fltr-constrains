import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.purple.shade600),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.purple.shade900,
              ),
              tooltip: 'Navigation Menu',
              onPressed: null,
            ),
            Expanded(
              child: title,
            ),
            const IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ));
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Column(children: [
          MyAppBar(
            title: Text(
              'Common Widgets',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Expanded(
            child: Center(
                child: Text(
              "Welcome to Widget World 🎊💫",
              style: TextStyle(
                color: Colors.purple[500],
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )),
          )
        ]),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(
      title: "Basic widgets",
      home: SafeArea(child: MyScaffold()),
    ));
