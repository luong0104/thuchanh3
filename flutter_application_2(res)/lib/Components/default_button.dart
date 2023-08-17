import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    required Key key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            ),
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          ),
          onPressed: press(),
          child: Text(
            text.toUpperCase(),
          ),
        ));
  }
}
