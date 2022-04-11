
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/generated/l10n.dart';

class Kitchen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).chKitchen),
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
                      Text("${S.of(context).chKitchen} 1", style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/renovations/kitchen/Kitchen1-1.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/kitchen/Kitchen1-2.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/kitchen/Kitchen1-3.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/kitchen/Kitchen1-4.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/kitchen/Kitchen1-5.jpg'),
                      Text(" "),
                      Text("${S.of(context).chKitchen} 2", style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/renovations/kitchen/Kitchen2-1.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/kitchen/Kitchen2-2.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/kitchen/Kitchen2-3.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/kitchen/Kitchen2-4.jpg'),
                      Text(" "),
                      Text("${S.of(context).chKitchen} 3", style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/renovations/kitchen/Kitchen3-1.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/kitchen/Kitchen3-2.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/kitchen/Kitchen3-3.jpg'),
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

