
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/generated/l10n.dart';

class CassaModerna extends StatelessWidget {
  const CassaModerna({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).chTitlecM),
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
                      Image.asset('assets/customHomes/CassaModerna1.jpg'),
                      Text(" "),
                      Text(S.of(context).chKitchen, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna2.jpg'),
                      Text(" "),
                      Text(S.of(context).chLiving, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna3.jpg'),
                      Text(" "),
                      Text(S.of(context).chFamily, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna4.jpg'),
                      Text(" "),
                      Text(S.of(context).chDining, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna5.jpg'),
                      Text(" "),
                      Text(S.of(context).chBar, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna6.jpg'),
                      Text(" "),
                      Text(S.of(context).chFoyer, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna7.jpg'),
                      Text(" "),
                      Text(S.of(context).chStaircase, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna8.jpg'),
                      Text(" "),
                      Text(S.of(context).chUpHall, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna9.jpg'),
                      Text(" "),
                      Text(S.of(context).chDen, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna10.jpg'),
                      Text(" "),
                      Text(S.of(context).chMasBed, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna11.jpg'),
                      Text(" "),
                      Text(S.of(context).chMasWash, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna12.jpg'),
                      Text(" "),
                      Text(S.of(context).chMasWash, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna13.jpg'),
                      Text(" "),
                      Text(S.of(context).chMasClo, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna14.jpg'),
                      Text(" "),
                      Text(S.of(context).chUpWash, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna15.jpg'),
                      Text(" "),
                      Text(S.of(context).chBackPool, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/customHomes/CassaModerna16.jpg'),
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

