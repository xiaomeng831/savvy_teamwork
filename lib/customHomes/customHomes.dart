
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/customHomes/theManor.dart';
import 'package:flutter_appfgds/customHomes/cassaModerna.dart';
import 'package:flutter_appfgds/generated/l10n.dart';

class CustomHomes extends StatelessWidget {
  const CustomHomes({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).chTitlecH),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.white70,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TheManor()),
                );
              },
               splashColor: Colors.white12,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/customHomes/TheManor1.jpg',fit:BoxFit.cover),
                      Text(S.of(context).chTitletM, style: new TextStyle(fontSize: 17.0,color:Colors.yellow)),
                      Text(S.of(context).chFirst, style: new TextStyle(fontSize: 15.0,color:Colors.white))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CassaModerna()),
                );
              },
                splashColor: Colors.white12,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/customHomes/CassaModerna1.jpg',fit:BoxFit.cover),
                      Text(S.of(context).chTitlecM, style: new TextStyle(fontSize: 17.0,color: Colors.yellow)),
                      Text(S.of(context).chSecond, style: new TextStyle(fontSize: 15.0,color:Colors.white))
                    ],
                  ),
                ),
              ),
            )
          ]
        )
      )
    );
  }
}

