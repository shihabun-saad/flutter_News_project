import 'package:flutter/material.dart';
import 'package:new_project/ui/all_news.dart';
import 'package:new_project/ui/breaking_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('News App'),
            centerTitle: true,
            bottom: TabBar(
                tabs: [Tab(text: "Breaking News"), Tab(text: "All News")]),
          ),
          body: TabBarView(
            children: [
              BreakineNews(),
              AllNews(),
            ],
          ),
        ));
  }
}
