import 'package:flutter/material.dart';
import 'package:unb/simple_animated_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UnB CiCnator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'UnB CiCnator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('ABOUT'),
                Text('SIGN IN'),
                Text('SIGN UP'),
              ],
            ),
          ),
        ],
        centerTitle: false,
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Text(
                  'Sample Title',
                  style: TextStyle(fontSize: 72),
                ),
                Text(
                  'Sample Subtitle',
                  style: TextStyle(fontSize: 32),
                ),
                Container(
                  width: 500,
                  margin: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SimpleAnimatedButton(
                        width: 160,
                        height: 50,
                      ),
                      SimpleAnimatedButton(
                        width: 160,
                        height: 50,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SimpleAnimatedButton(
                      width: 170,
                      height: 200,
                    ),
                    SimpleAnimatedButton(
                      width: 170,
                      height: 200,
                    ),
                    SimpleAnimatedButton(
                      width: 170,
                      height: 200,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
