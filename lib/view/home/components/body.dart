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
          const SizedBox(height: 20),
          MessageCard(
            imagePath: 'assets/images/davi_firmino.jpg',
            firstName: 'Davi',
            lastName: 'Firmino',
            hasActivity: true,
            messagePreview: 'Realmente kkk coisa de louco, mas mesmo assim, acredito 😑',
            timeMessage: '14min',
            unreadMessage: 3,
          ),   
          const SizedBox(height: 20),
           MessageCard(
            imagePath: 'assets/images/nicolle_lacerda.jpg',
            firstName: 'Nicolle',
            lastName: 'Lacerda',
            hasActivity: true,
            messagePreview: 'Ai amor kk o que tem pra comer hoje? To com fome 😬',
            timeMessage: '15min',
            isRead: true,
          ),
          const SizedBox(height: 20),
           MessageCard(
            imagePath: 'assets/images/sidnei_silvestre.jpg',
            firstName: 'Sidnei',
            lastName: 'Silvestre',
            hasActivity: true,
            messagePreview: 'Passa no mercado e pega pão.',
            timeMessage: '22min',
            isRead: false,
            unreadMessage: 1,
          ), 
          const SizedBox(height: 20),
          MessageCard(
            imagePath: 'assets/images/elen_cristina.jpg',
            firstName: 'Elen',
            lastName: 'Cristina',
            hasActivity: true,
            messagePreview: 'Oi filho, já saiu?',
            timeMessage: '44min',
            isRead: true,
          ),
        ],
      ),
    );
  }
}

