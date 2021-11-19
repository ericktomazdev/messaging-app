// Package
import 'package:flutter/material.dart';

// Local
import './page_header.dart';
import './search_bar.dart';
import './section_description.dart';
import 'activity_row.dart';
import './message_card.dart';

class Body extends StatefulWidget {
  const Body({ Key key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {


  List<Map<String, dynamic>> messageCardData = [
    {
      'imagePath': 'assets/images/sidnei_silvestre.jpg',
      'firstName': 'Sidnei',
      'lastName': 'Silvestre',
      'hasActivity': true,
      'messagePreview': 'Passa no mercado e pega pão.',
      'timeMessage': '22min',
      'isRead': false,
      'unreadMessage': 1,
    },
    {
      'imagePath': 'assets/images/davi_firmino.jpg',
      'firstName': 'Davi',
      'lastName': 'Firmino',
      'hasActivity': true,
      'messagePreview': 'Realmente kkk coisa de louco, mas mesmo assim, acredito',
      'timeMessage': '14min',
      'isRead': true,
      'unreadMessage': 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 15),
          PageHeader(
            pageHeader: 'Mensagens',
          ),
          const SizedBox(height: 15),
          SearchBar(
            hintText: 'Pesquisar'
          ),
          const SizedBox(height: 15),
          SectionDescription(
            descriptionText: 'Atividades',
          ),
          const SizedBox(height: 20),
          const ActivityRow(),
          const SizedBox(height: 15),
          SectionDescription(
            descriptionText: 'Mensagens',
          ), 
          const SizedBox(height: 15), 
          ..._buildMessageCards(),
        ],
      ),
    );
  }


  List<Widget> _buildMessageCards() {
    return [
      Column(
        children: <Widget> [
          ...messageCardData.map<Widget>(
            (element) { 
              
              final messageCard = MessageCard()
              ..imagePath = element['imagePath']
              ..firstName = element['firstName']
              ..lastName = element['lastName']
              ..hasActivity = element['hasActivity']
              ..messagePreview = element['messagePreview']
              ..timeMessage = element['timeMessage']
              ..unreadMessage = element['unreadMessage'];

              final messageCardInBox = Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: messageCard,
              );

              return messageCardInBox;
              }).toList(),
        ],
      ),
    ];
  }
}

