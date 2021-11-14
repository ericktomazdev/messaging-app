// Package
import 'package:flutter/material.dart';
import 'package:tunico_message/constants.dart';
import 'package:tunico_message/home/components/profile_picture.dart';

class MessageCard extends StatelessWidget {
  MessageCard({
    Key key,
    this.firstName,
    this.lastName,
    this.messagePreview,
    this.hasActivity = false,
    this.imagePath,
    this.timeMessage,
    this.isRead = false,
    this.unreadMessage,
    }) : super(key: key);

  String firstName;
  String lastName; 
  String imagePath;
  bool hasActivity;
  String messagePreview; 
  String timeMessage;
  bool isRead;
  int unreadMessage;

  @override
  Widget build(BuildContext context) {


    final profilePicture = Stack(
      children: [
          ProfilePicture(
            imageSize: 65,
            imagePath: imagePath,
            hasActivity: hasActivity,
          ),
         if (isRead == false) Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: kGreenColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  unreadMessage.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
      ],
    );

    final messageTexts = Container(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$firstName $lastName',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  timeMessage,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: isRead ? kDarkGreyColor : kGreenColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            Text(
              messagePreview,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      );

      final messageCard = FractionallySizedBox(
        widthFactor: 0.87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            profilePicture,
            const SizedBox(width: 15),
            messageTexts,
          ],
        ),
      );

    return Container(
      child: messageCard,
    );
  }
}