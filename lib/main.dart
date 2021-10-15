import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData.dark(),
        home: inshortsUI(),
        debugShowCheckedModeBanner: false,
      ),
    );

// ignore: camel_case_types
class inshortsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('My Feed'),
        centerTitle: true,
        leading: Row(
          children: [
            Icon(Icons.arrow_back_ios_new_sharp),
            TextButton(
              // style: ButtonStyle(backgroundColor: ),
              onPressed: () {},
              child: Text('Discover'),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Card(
                child: Image.asset('assets/jimmy.webp'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Unusual to get Kohli out so early: Anderson on his golden duck',
                      style: TextStyle(fontSize: 22.0),
                    ),
                    SizedBox(height: 10.0),
                    Wrap(
                      children: [
                        Text(
                          'England Pacer James Anderson, who dismissed Virat Kohli for a first'
                          'ball duck on Thursday, said it as "unusual" to get the Team India Skipper'
                          'out that early on the second day of first Test. "Kohli is such a big wicket," he added'
                          'The 39-year-old has dismissed Kohli on sir occasions in Test so far, including twice for a duck.',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18.5,
                            color: Colors.grey[350],
                            letterSpacing: .75,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 6.0),
            decoration: BoxDecoration(
              color: Colors.grey[850],
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            margin: EdgeInsets.only(left: 40.0, top: 215.0),
            child: Text(
              'inshorts',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
                color: Colors.grey,
                // backgroundColor: Colors.grey[850],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.circle,
                color: Colors.green,
                size: 30.0,
              ),
              onPressed: () {},
              tooltip: 'Relevancy',
            ),
            IconButton(
              icon: Icon(Icons.share_outlined),
              iconSize: 30.0,
              onPressed: () {},
              tooltip: 'Share',
            ),
            IconButton(
              icon: Icon(Icons.bookmark_border_rounded),
              onPressed: () {},
              tooltip: 'Bookmark',
              iconSize: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
