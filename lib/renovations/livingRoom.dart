
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/generated/l10n.dart';

class LivingRoom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).chLiving),
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
                      Text("${S.of(context).chLiving} 1", style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/renovations/livingRoom/LivingRoom1-1.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/livingRoom/LivingRoom1-2.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/livingRoom/LivingRoom1-3.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/livingRoom/LivingRoom1-4.jpg'),
                      Text(" "),
                      Text("${S.of(context).chLiving} 2", style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/renovations/livingRoom/LivingRoom2-1.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/livingRoom/LivingRoom2-2.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/livingRoom/LivingRoom2-3.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/livingRoom/LivingRoom2-4.jpg'),
                      Text(" ")
                    ]
                )
            )
          ],
        ),
      ),
    );

  }



}

