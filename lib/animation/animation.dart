import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animationcon extends StatefulWidget {
   Animationcon({Key? key}) : super(key: key);

  @override
  State<Animationcon> createState() => _AnimationconState();
}

class _AnimationconState extends State<Animationcon> {

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
    return Scaffold(
      body: Center(
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
                    // [
                    //   Color(0xFA144873),
                    //   Color(0x942265A1)
                    // ]
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
    );
  }
}
