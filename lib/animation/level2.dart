import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Level2 extends StatefulWidget {
  Level2({Key? key}) : super(key: key);

  Tween<double> _scaleTween = Tween<double>(begin: 1, end: 2);

  @override
  State<Level2> createState() => _Level2State();
}

class _Level2State extends State<Level2> {
  double _width = 200;
  double _height= 200;
  var _color = [
    Color(0xFA144873),
    Color(0x942265A1)
  ];
  _updateState(){
    setState(() {
      _width = 300;
      _height = 300;
      _color = [
        Color(0xFAEF288B),
        Color(0xABCE68B6)
      ];
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child:

        // TweenAnimationBuilder<Color>(
        //   tween: Tween<Color>(begin: Colors.red, end: Colors.green),
        //   duration: Duration(seconds: 2),
        //   builder: (BuildContext context, Color color, Widget? child) {
        //     return Container(color: color);
        //   },

          // AnimatedBuilder(
        //   animation: someAnimation,
        //   // pass a child widget
        //   child: Container(color: Colors.red),
        //   // get the child back as a (nullable) Widget object
        //   builder: (BuildContext context, Widget? child) {
            // this rebuilds on every animation tick

        TweenAnimationBuilder(
          tween: Tween<double>(begin: 1, end: 2),
        // tween:AlignmentTween( begin: Alignment.center, end: Alignment.topRight),
          duration: Duration(milliseconds: 600),
          builder: (context, scale, child) {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(2 * pi* size*0.8),
              child: child,
            );
          },



          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:(){
                  _updateState();
                },
                child: Text("Animate"),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds:900),
                curve: Curves.bounceOut,
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors:_color
                    )
                ),
                child: Center(
                  child: Text(
                    "Animation",
                    style: TextStyle(
                        color: Colors.white70
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
