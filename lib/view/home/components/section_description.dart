// Package
import 'package:flutter/material.dart';

class SectionDescription extends StatelessWidget {
   SectionDescription({ Key key, this.descriptionText }) : super(key: key);

  String descriptionText;

  @override
  Widget build(BuildContext context) {

    final description = Text(
      descriptionText, 
      style: Theme.of(context).textTheme.subtitle1,
    ),

      descriptionInBox = FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        child: description,
      ),
    );


    return Container(
      width: double.infinity,
      child: descriptionInBox,
    );
  }
}