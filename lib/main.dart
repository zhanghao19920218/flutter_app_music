import 'package:flutter/material.dart';
import 'theme.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Music Player',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
//  MyHomePage({key: Key}):super(key : key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: const Color(0xFFDDDDDD),
              onPressed: () {}),
          title: Text(''),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.menu),
                color: const Color(0xFFDDDDDD),
                onPressed: () {}),
          ],
        ),
        body: Column(
          children: <Widget>[
            //Seek Bar
            Expanded(
              child: Container(),
            ),

            //Visualizer
            Container(
              width: double.infinity,
              height: 125.0,
            ),

            //Song title, artist name, and controls
            Container(
              color: accentColor,
              child: new Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
                child: Column(
                  children: <Widget>[
                    RichText(
                        text: TextSpan(text: '', children: [
                          TextSpan(
                            text: 'Song Title\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4.0,
                              height: 1.5,
                            ),
                          ),
                          TextSpan(
                              text: 'Artist Name',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.75),
                                  fontSize: 12.0,
                                  letterSpacing: 3.0,
                                  height: 1.5
                              )
                          )
                        ])),
                    Padding(padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: <Widget>[

                        IconButton(
                          icon: Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          onPressed: (){

                          },
                        ),

                        Expanded(child: Container()),



                        Expanded(child: new Container()),

                        RawMaterialButton(
                          shape: CircleBorder(),
                            fillColor: Colors.white,
                            splashColor: lightAccentColor,
                            highlightColor: lightAccentColor.withOpacity(0.5),
                            elevation: 10.0,
                            highlightElevation: 5.0,
                            onPressed: (){},
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                            child: Icon(
                              Icons.play_arrow,
                              color: darkAccentColor,
                              size: 35.0,
                            ),
                          ),

                        ),

                        Expanded(child: new Container()),

                        Expanded(child: new Container()),

                        IconButton(
                          icon: Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          onPressed: (){

                          },
                        ),



                      ],
                    ),)
                  ],
                ),),
            )
          ],
        ));
  }
}
