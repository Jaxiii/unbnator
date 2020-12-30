import 'package:flutter/material.dart';
import 'package:unb/global_widgets/circle_button.dart';
import 'package:unb/global_widgets/simple_animated_button.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
      body: Stack(
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
                      innerWidget: Text('Login'),
                    ),
                    SimpleAnimatedButton(
                      width: 160,
                      height: 50,
                      innerWidget: Text('Sign Up'),
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
                    innerWidget: Text('Classes Subscriptions'),
                  ),
                  SimpleAnimatedButton(
                    width: 170,
                    height: 200,
                    innerWidget: Text('Calendar'),
                  ),
                  SimpleAnimatedButton(
                    width: 170,
                    height: 200,
                    innerWidget: Text('Missined Classes'),
                  ),
                ],
              ),
              SimpleAnimatedButton(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.2,
                innerWidget: Stack(
                  children: [
                    Row(
                      children: [
                        CircleAnimatedButton(
                          width: 50.0,
                          height: 50.0,
                        ),
                        CircleAnimatedButton(
                          width: 50.0,
                          height: 50.0,
                        ),
                        CircleAnimatedButton(
                          height: 50.0,
                          width: 50.0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
