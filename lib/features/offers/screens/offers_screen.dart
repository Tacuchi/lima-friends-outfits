import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              title: Text('Offers'),
            ),
          ];
        },
        body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 60,
              color: const Color(0xFFAE00CC),
              child: Center(child: Text('Item $index')),
            );
          },
          itemCount: 100,
        ),
      ),
    );
  }
}
