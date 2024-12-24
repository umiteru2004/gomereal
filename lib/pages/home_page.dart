import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'photo_page.dart';
import 'map_page.dart';

final _indexProvider = StateProvider((ref) => 0);
//final _pageList = [ChatPage(), AccountPage()];

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
        leading:
            IconButton(onPressed: () => {}, icon: const Icon(Icons.people)),
        actions: [
          IconButton(
              onPressed: () => {}, icon: const Icon(Icons.account_circle))
        ],
        shape: const Border(
            bottom: BorderSide(color: Color(0xff818181), width: 1)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 64,
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle),
                  Text("umiteru2004")
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/novaskin-wallpaper-ocean.jpeg"),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.favorite_border),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border:
                Border(top: BorderSide(color: Color(0xff818181), width: 1))),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_pin),
              label: "",
            ),
          ],
          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
