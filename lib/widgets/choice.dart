import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  final String choiceText;
  final Function submitCallback;

  Choice(this.choiceText, this.submitCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 6),
      child: RaisedButton(
        onPressed: () => submitCallback(choiceText),
        child: Text(choiceText),
        color: Colors.blueGrey,
        textColor: Colors.white,
      ),
    );
  }
}
