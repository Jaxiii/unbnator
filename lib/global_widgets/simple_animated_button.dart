import 'package:flutter/material.dart';

class SimpleAnimatedButton extends StatefulWidget {
  SimpleAnimatedButton({
    Key key,
    Widget innerWidget,
    @required double width,
    @required double height,
  }) : 
  innerWidget = innerWidget,
  width = width,
  height = height,
  super(key: key);

  final Widget innerWidget;
  final double width, height;
  
  @override
  _SimpleAnimatedButtonState createState() => _SimpleAnimatedButtonState();
}

class _SimpleAnimatedButtonState extends State<SimpleAnimatedButton> {
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;
  double _hoverBottomMargin = 0.0;
  double _hoverTopMargin = 3.0;
  bool _onHover;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;

      // Simple Honver Animation
      // Shifting values between top and bottom margin
      _onHover = true;
      _hoverTopMargin = 0.0;
      _hoverBottomMargin = 3.0;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      _exitCounter++;
      _onHover = false;

      // Simple Honver Animation
      // Shifting values between top and bottom margin
      _hoverTopMargin = 3.0;
      _hoverBottomMargin = 0.0;
    });
  }

  void _updateLocation(
    PointerEvent details,
  ) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 120),
        margin:
            // Update on enter and exit with SetState on _incrementEnter and _incrementExit
            EdgeInsets.only(bottom: _hoverBottomMargin, top: _hoverTopMargin),
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: Colors.blue,
          onPressed: () => {},
          child: Container(
            height: widget.height,
            width: widget.width,
            alignment: Alignment.center,
            child: widget.innerWidget,
          ),
        ),
      ),
    );
  }
}
