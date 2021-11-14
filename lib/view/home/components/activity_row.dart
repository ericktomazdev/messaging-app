// Package
import 'package:flutter/material.dart';

// Local
import 'profile_picture.dart';

class ActivityRow extends StatelessWidget {
  const ActivityRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: <Widget> [
          const SizedBox(width: 20),
          ProfilePicture(
            imageSize: 65,
            imagePath: 'assets/images/elen_cristina.jpg',
            hasActivity: true,
            firstName: 'Elen',
          ),
          const SizedBox(width: 25),
          ProfilePicture(
            imageSize: 65,
            imagePath: 'assets/images/nicolle_lacerda.jpg',
            hasActivity: true,
            firstName: 'Nicolle',
          ),
          const SizedBox(width: 25),
          ProfilePicture(
            imageSize: 65,
            imagePath: 'assets/images/jairo_lacerda.jpg',
            hasActivity: true,
            firstName: 'Jairo',
          ),
          const SizedBox(width: 25),
          ProfilePicture(
            imageSize: 65,
            imagePath: 'assets/images/sidnei_silvestre.jpg',
            hasActivity: true,
            firstName: 'Sidnei',
          ),
          const SizedBox(width: 25),
          ProfilePicture(
            imageSize: 65,
            imagePath: 'assets/images/davi_firmino.jpg',
            hasActivity: true,
            firstName: 'Davi',
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}