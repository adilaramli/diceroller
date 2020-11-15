import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';



class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage;
    AssetImage diceimage2;


  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage2 = one;

    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int dice = (1 + Random().nextInt(6));

    AssetImage newImage;
    AssetImage newDice;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    switch (dice) {
      case 1:
        newDice = one;
        break;
      case 2:
        newDice = two;
        break;
      case 3:
        newDice = three;
        break;
      case 4:
        newDice = four;
        break;
      case 5:
        newDice = five;
        break;
      case 6:
        newDice = six;
        break;
    }
    setState(() {
      diceimage = newImage;
      diceimage2 = newDice;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: 
        Text(
          'Welcome to the dice roller!',
          style: GoogleFonts.pressStart2p(
            textStyle: TextStyle(color: Colors.black, letterSpacing: 2, fontSize: 10  ),
          ),
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/ye.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Image(
                image: diceimage,
                width: 150.0,
                height: 150.0,
                
              ),
              Image(
                image: diceimage2,
                width: 150.0,
                height: 150.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.yellowAccent,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: 
                  Text(
                    'Roll the dice!',
                    style: GoogleFonts.pressStart2p(fontSize: 16),
                  ),
                  onPressed: rollDice,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
