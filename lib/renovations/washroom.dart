
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/generated/l10n.dart';

class Washroom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).chWash),
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
                      Text("${S.of(context).chWash} 1", style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/renovations/washroom/Washroom1-1.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/washroom/Washroom1-2.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/washroom/Washroom1-3.jpg'),
                      Text(" "),
                      Text("${S.of(context).chWash} 2", style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/renovations/washroom/Washroom2-1.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/washroom/Washroom2-2.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/washroom/Washroom2-3.jpg'),
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

