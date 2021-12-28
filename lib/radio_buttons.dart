import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum SauceType { spicySauce, sweetSauce, cheeseSauce }

class MyRadioButtons extends StatefulWidget {
  const MyRadioButtons({Key? key}) : super(key: key);

  @override
  _MyRadioButtonsState createState() => _MyRadioButtonsState();
}

class _MyRadioButtonsState extends State<MyRadioButtons> {
  SauceType? _type = SauceType.spicySauce;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30.0,
          child: RadioListTile<SauceType>(
            controlAffinity: ListTileControlAffinity.trailing,
            title: const Text('Острый'),
            value: SauceType.spicySauce,
            groupValue: _type,
            onChanged: (SauceType? value) {
              setState(() {
                _type = value;
              });
            },
          ),
        ),
        SizedBox(
          height: 30.0,
          child: RadioListTile<SauceType>(
            controlAffinity: ListTileControlAffinity.trailing,
            title: const Text('Кисло-сладкий'),
            value: SauceType.sweetSauce,
            groupValue: _type,
            onChanged: (SauceType? value) {
              setState(() {
                _type = value;
              });
            },
          ),
        ),
        SizedBox(
          height: 30.0,
          child: RadioListTile<SauceType>(
            controlAffinity: ListTileControlAffinity.trailing,
            title: const Text('Сырный'),
            value: SauceType.cheeseSauce,
            groupValue: _type,
            onChanged: (SauceType? value) {
              setState(() {
                _type = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
