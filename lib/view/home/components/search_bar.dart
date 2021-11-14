// Package
import 'package:flutter/material.dart';

// Local
import '../../constants.dart';

class SearchBar extends StatelessWidget {
  SearchBar({ Key key, this.hintText}) : super(key: key);

  String hintText; 

  @override
  Widget build(BuildContext context) {

    final input = TextField(
      textAlign: TextAlign.start,
      decoration: InputDecoration.collapsed(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headline6,
      ),
      obscureText: false,
    );

    final inputInBox = FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        height: 44, 
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            child: input,
            ),
          ),
        decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    return Container(
      width: double.infinity,
      child: inputInBox,
    );
  }
}