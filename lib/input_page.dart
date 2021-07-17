import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const cardsBackgroundColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: cardsBackgroundColor),
                ReusableCard(colour: cardsBackgroundColor),
              ],
            ),
          ),
          ReusableCard(colour: cardsBackgroundColor),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: cardsBackgroundColor),
                ReusableCard(colour: cardsBackgroundColor),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ReusableCard extends StatelessWidget {

  Color colour;

  ReusableCard({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}


// Color(0xFF1D1E33)