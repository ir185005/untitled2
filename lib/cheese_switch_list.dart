import 'package:flutter/material.dart';

class MySwitchList extends StatefulWidget {
  const MySwitchList({Key? key}) : super(key: key);

  @override
  _MySwitchListState createState() => _MySwitchListState();
}

class _MySwitchListState extends State<MySwitchList> {
  bool _cheese = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: SwitchListTile(
        dense: true,
        tileColor: Colors.grey.shade300,
        title: const Text(
          'Дополнительный сыр',
          style: TextStyle(fontSize: 18.0),
        ),
        value: _cheese,
        onChanged: (bool value) {
          setState(() {
            _cheese = value;
          });
        },
        secondary: const ImageIcon(
          AssetImage('images/02.png'),
          size: 40.0,
        ),
      ),
    );
  }
}
