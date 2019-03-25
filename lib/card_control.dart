import 'package:flutter/material.dart';

class CardControl extends StatelessWidget {
  final Function _addCards;
  final Function _removeCards;

  CardControl(this._addCards, this._removeCards);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            _addCards('paradise');
          },
          child: Text('Add More Cards'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            _removeCards();
          },
          child: Text('Remove Cards'),
        )
      ],
    );
  }
}
