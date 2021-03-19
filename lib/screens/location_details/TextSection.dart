import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _content;
  static const double _hpad = 16;

  TextSection(this._title, this._content);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4),
            child: Text(
              this._title,
              style: Theme.of(context).textTheme.headline6,
            )),
        Container(
          padding: const EdgeInsets.fromLTRB(_hpad, 10.0, _hpad, _hpad),
          child: Text(
            this._content,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }
}
