import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final List<String> items;

  Cards(this.items);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: items
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/$element.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
