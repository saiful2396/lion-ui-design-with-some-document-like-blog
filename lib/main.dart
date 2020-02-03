import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'The Lion King',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Text('6.5/10'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(25),
      child: Text(
        'Simba collapses in a desert and is rescued by Timon'
            ' and Pumbaa, a meerkat and warthog, who are fellow outcasts.'
            ' Simba grows up in the oasis with his two new friends and other'
            ' animals in their oasis, living a carefree life under the motto'
            ' "hakuna matata" ("no worries" in Swahili). Now a young adult,'
            ' Simba rescues Timon and Pumbaa from a hungry lioness,'
            ' who turns out to be Nala. She and Simba reunite and fall in love,'
            ' and she urges him to return home, telling him that the Pride Lands'
            ' have become a drought-stricken wasteland under Scar reign.'
            ' Realizing that he can no longer run from his past,'
            'Simba decides to return to the Pride Lands.',
        softWrap: true,
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.crop_square, 'Rate Movie'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
          _buildButtonColumn(color, Icons.bookmark, 'BOKEMARK'),
        ],
      ),
    );


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lion.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
            buttonSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Color(0xFF3B3261)),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}