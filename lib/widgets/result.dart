import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetCallback;

  Result(this.score, this.resetCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 6.0,
            margin: EdgeInsets.only(bottom: 20),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 80,
              ),
              child: Text(
                'DONE!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            'You scored $score out of 4',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 28),
            child: FlatButton(
              onPressed: resetCallback,
              textColor: Colors.blue,
              child: Text(
                'Re-take Quiz',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
