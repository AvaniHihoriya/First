import 'package:animation/animation/animation.dart';
import 'package:animation/animation/level2.dart';
import 'package:animation/animation/level3/basic_animation_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Animationcon()));
                        },
                        child: Text(
                          "level 1",
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Level2()));
                      },
                      child: Text(
                        "level 2",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimationPage()));
                      },
                      child: Text(
                        "level 3",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
