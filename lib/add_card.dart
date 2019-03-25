import 'package:flutter/material.dart';
import './cards.dart';
import './card_control.dart';

class AddCard extends StatefulWidget {
  final String startingItem;
  AddCard(this.startingItem);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddCardState();
  }
}

class _AddCardState extends State<AddCard> {
  List<String> _items = [];
  int counter = 1;

  @override
  void initState() {
    _items.add(widget.startingItem);
    print(_items);
    // TODO: implement initState
    super.initState();
  }

  void _addCards(String item) {
    counter++;
    if (counter % 3 > 0) {
      counter = counter % 3;
    }

    setState(() {
      _items.add(item + counter.toString());
    });
  }

  void _removeCards() {
    setState(() {
      _items.removeLast();
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    height: 50.0,
                    margin: EdgeInsets.all(10.0),
                    child: CardControl(_addCards, _removeCards),
                  ),
                  Cards(_items)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
