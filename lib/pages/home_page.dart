import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'top_page.dart';
import 'photo_page.dart';
import 'map_page.dart';

final _indexProvider = StateProvider((ref) => 0);
final _pageList = [TopPage(), PhotoPage(), MapPage()];

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(_indexProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
            IconButton(onPressed: () => {}, icon: const Icon(Icons.people)),
        actions: [
          IconButton(
              onPressed: () => {}, icon: const Icon(Icons.account_circle))
        ],
        shape: const Border(
            bottom: BorderSide(color: Color(0xff818181), width: 1)),
      ),
      body: IndexedStack(
        index: pageIndex,
        children: _pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "ホーム"),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "写真"),
          BottomNavigationBarItem(icon: Icon(Icons.location_pin), label: "マップ")
        ],
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: pageIndex,
        onTap: (index) {
          if (pageIndex != index) {
            ref.read(_indexProvider.notifier).state = index;
          }
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
