// Package
import 'package:flutter/material.dart';

// Local 
import '../../constants.dart';

class ProfilePicture extends StatelessWidget {
  ProfilePicture({ 
    Key key, 
    this.imagePath = 'assets/images/default_profile_picture.png', 
    @required this.imageSize ,
    this.hasActivity = false,
    this.firstName = '',
    }) : super(key: key);

  String imagePath; 
  double imageSize; 
  bool hasActivity;
  String firstName;


  @override
  Widget build(BuildContext context) {

    final pictureContainer = Container(
      height: imageSize, 
      width: imageSize, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage(imagePath),
        ),
      ),
    );

    final pictureBorder = CustomPaint(
      painter: BorderPainter(
        radius: imageSize - (imageSize / 2.25),
      ),
      child: pictureContainer,
    );

    final nameDescription = Text(
      firstName,
      style: Theme.of(context).textTheme.subtitle1,
    );

    final hasActivityAndNamed = Column(
      children: <Widget> [
        pictureBorder,
        const SizedBox(height: 15),
        nameDescription,
      ],
    );

    final hasntActivityAndUnnamed = Column(
      children: <Widget> [
        pictureContainer,
      ],
    );

    final hasntActivityAndNamed = Column(
      children: <Widget> [
        pictureContainer,
        const SizedBox(height: 15),
        nameDescription,
      ],
    );

    if(hasActivity & firstName.isEmpty) {
      return pictureBorder;
    } else if (hasActivity & firstName.isNotEmpty) {
      return hasActivityAndNamed;
    } else if(hasActivity == false & firstName.isNotEmpty){
     return hasntActivityAndNamed;
    } else {
      hasntActivityAndUnnamed;
    }
  }

}

class BorderPainter extends CustomPainter {
  double radius; 
  BorderPainter({this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = kGreenColor
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: radius,
    ));
    canvas.drawPath(path, paint);

 }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}