import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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
    );
  }
}
