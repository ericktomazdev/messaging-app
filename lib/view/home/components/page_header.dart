// Package
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {

  PageHeader({
     Key key, 
     @required this.pageHeader,
     }) : super(key: key);
     
  String pageHeader;

  @override
  Widget build(BuildContext context) {

    final header = Text(
      pageHeader,
      style: Theme.of(context).textTheme.headline1,
      );

    final headerInBox = FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        width: double.infinity,
        height: 30,
        child: header,
      ),
    );


    return Container(
      width: double.infinity,
      child: headerInBox,
    );
  }
}