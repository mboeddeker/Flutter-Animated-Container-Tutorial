import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  var containerHeight = 250.0;
  var containerWidth = 250.0;
  var containerColor = Colors.teal;
  var buttonColor = Colors.orange;

  void _animateContainer(BuildContext context) {
    containerHeight = 100; //MediaQuery.of(context).size.height;
    containerWidth = MediaQuery.of(context).size.width;
    containerColor = Colors.lightBlue;
    buttonColor = Colors.lime;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: containerHeight,
          width: containerWidth,
          color: containerColor,
          child: Center(
            child: RaisedButton(
              color: buttonColor,
              onPressed: () => _animateContainer(context),
              child: Text('ANIMATE'),
            ),
          ),
        ),
      ),
    );
  }
}
