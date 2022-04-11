
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/generated/l10n.dart';

class TheManor extends StatelessWidget {
  const TheManor({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).chTitletM),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.white70,
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(flex: 3,
                child: ListView(
                    children: <Widget>[
                      Text(" "),
                      Text(S.of(context).chExterior, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor1.jpg'),
                      Text(" "),
                      Text(S.of(context).chKitchen, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor2.jpg'),
                      Text(" "),
                      Text(S.of(context).chFamily, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor3.jpg'),
                      Text(" "),
                      Text(S.of(context).chLiving, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor4.jpg'),
                      Text(" "),
                      Text(S.of(context).chDining, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor5.jpg'),
                      Text(" "),
                      Text(S.of(context).chMasWash, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor6.jpg'),
                      Text(" "),
                      Text(S.of(context).chFoyer, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor7.jpg'),
                      Text(" "),
                      Text(S.of(context).chStaircase, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor8.jpg'),
                      Text(" "),
                      Text(S.of(context).chUpHall, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor9.jpg'),
                      Text(" "),
                      Text(S.of(context).chMasBed, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor10.jpg'),
                      Text(" "),
                      Text(S.of(context).chMasWash, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor11.jpg'),
                      Text(" "),
                      Text(S.of(context).chUpWash, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor12.jpg'),
                      Text(" "),
                      Text(S.of(context).chBalcony, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor13.jpg'),
                      Text(" "),
                      Text(S.of(context).chBasement, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor14.jpg'),
                      Text(" "),
                      Text(S.of(context).chBasement, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor15.jpg'),
                      Text(" "),
                      Text(S.of(context).chBackyard, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor16.jpg'),
                      Text(" "),
                      Text(S.of(context).chBackyard, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/TheManor17.jpg'),
                      Text(" ")
                    ]
                )
            )
          ],
        ),
      ),
    );
    //body: Center(
    //child: ElevatedButton(
    //onPressed: () {
    // Navigate back to first route when tapped.
    //},
    //child: Text('Go back!'),
    //),
    //),

  }



}

