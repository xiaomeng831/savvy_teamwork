
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/generated/l10n.dart';

class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(S.of(context).mainServices),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Color(0xFF262626),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(flex: 3,
                child: ListView(
                    children: <Widget>[
                      Text(" "),
                      Text(S.of(context).seOS, style: new TextStyle(fontSize: 35.0, color:Colors.white, backgroundColor:Color(0xFF9A8A78)), textAlign:TextAlign.center),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).seCR1, style: new TextStyle(fontSize: 30.0, color:Color(0xFF9A8A78))),
                      Text(" "),
                      Text(S.of(context).seCR2,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Divider(height: 10.0,color: Color(0xFF9A8A78),thickness: 2),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).seKR1, style: new TextStyle(fontSize: 30.0, color:Color(0xFF9A8A78))),
                      Text(" "),
                      Text(S.of(context).seKR2,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Divider(height: 10.0,color: Color(0xFF9A8A78),thickness: 2),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).seF1, style: new TextStyle(fontSize: 30.0, color:Color(0xFF9A8A78))),
                      Text(" "),
                      Text(S.of(context).seF2,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Divider(height: 10.0,color: Color(0xFF9A8A78),thickness: 2),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).seHI1, style: new TextStyle(fontSize: 30.0, color:Color(0xFF9A8A78))),
                      Text(S.of(context).seHI2,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Divider(height: 10.0,color: Color(0xFF9A8A78),thickness: 2),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).seCH1, style: new TextStyle(fontSize: 30.0, color:Color(0xFF9A8A78))),
                      Text(" "),
                      Text(S.of(context).seCH2,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Divider(height: 10.0,color: Color(0xFF9A8A78),thickness: 2),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).seBR1, style: new TextStyle(fontSize: 30.0, color:Color(0xFF9A8A78))),
                      Text(" "),
                      Text(S.of(context).seBR2,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Divider(height: 10.0,color: Color(0xFF9A8A78),thickness: 2),
                      Divider(height: 10.0,color: Color(0xFF9A8A78),thickness: 2),
                      Text(" "),
                      Text(" "),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).seOE, style: new TextStyle(fontSize: 35.0, color:Colors.white, backgroundColor:Color(0xFF9A8A78)), textAlign:TextAlign.center),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).sePC1, style: new TextStyle(fontSize: 30.0, color:Color(0xFF9A8A78))),
                      Text(" "),
                      Text(S.of(context).sePC2,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Text(S.of(context).sePC3,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Text(S.of(context).sePC4,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Divider(height: 10.0,color: Color(0xFF9A8A78),thickness: 2),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).seC1, style: new TextStyle(fontSize: 30.0, color:Color(0xFF9A8A78))),
                      Text(" "),
                      Text(S.of(context).seC2,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Text(S.of(context).seC3,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Text(S.of(context).seC4,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Text(S.of(context).seC5,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Divider(height: 10.0,color: Color(0xFF9A8A78),thickness: 2),
                      Text(" "),
                      Text(" "),
                      Text(S.of(context).sePOC1, style: new TextStyle(fontSize: 30.0, color:Color(0xFF9A8A78))),
                      Text(" "),
                      Text(S.of(context).sePOC2,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Text(S.of(context).sePOC3,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Text(S.of(context).sePOC4,  style: new TextStyle(fontSize: 20.0, color:Colors.white)),
                      Text(" "),
                      Text(" "),
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

