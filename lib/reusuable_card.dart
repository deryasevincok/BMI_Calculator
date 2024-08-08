import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(this.onPress,this.colour, this.cardChild);
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        //height: 200.0,
        //width: 150.0,
      ),
    );
  }
}