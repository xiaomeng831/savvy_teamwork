
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/generated/l10n.dart';

class Basement extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).chBasement),
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
                      Text(S.of(context).chBasement, style: new TextStyle(fontSize: 17.0, color:Colors.white)),
                      Image.asset('assets/renovations/basement/Basement1.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/basement/Basement2.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/basement/Basement3.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/basement/Basement4.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/basement/Basement5.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/basement/Basement6.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/basement/Basement7.jpg'),
                      Text(" "),
                      Image.asset('assets/renovations/basement/Basement8.jpg'),
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

