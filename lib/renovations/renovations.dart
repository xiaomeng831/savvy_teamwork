
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/renovations/kitchen.dart';
import 'package:flutter_appfgds/renovations/washroom.dart';
import 'package:flutter_appfgds/renovations/livingRoom.dart';
import 'package:flutter_appfgds/renovations/basement.dart';
import 'package:flutter_appfgds/generated/l10n.dart';


class Renovations extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).mainRenovations),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
        backgroundColor: Colors.white70,
        body: Container(
            padding: EdgeInsets.all(30.0),
            child: GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.all(8.0),
                    child: InkWell(onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Kitchen()),
                    );
                    },
                      splashColor: Colors.white12,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.asset('assets/renovations/kitchen/Kitchen1-1.jpg',fit:BoxFit.cover),
                            Text(S.of(context).rnKitchens, style: new TextStyle(fontSize: 17.0,color:Colors.yellow)),
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
                        MaterialPageRoute(builder: (context) => Washroom()),
                      );
                    },
                      splashColor: Colors.white12,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.asset('assets/renovations/washroom/Washroom1-1.jpg',fit:BoxFit.cover),
                            Text(S.of(context).rnWashrooms, style: new TextStyle(fontSize: 17.0,color: Colors.yellow)),
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
                    child: InkWell(onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LivingRoom()),
                    );
                    },
                      splashColor: Colors.white12,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.asset('assets/renovations/livingRoom/LivingRoom1-1.jpg',fit:BoxFit.cover),
                            Text(S.of(context).rnLivingRooms, style: new TextStyle(fontSize: 17.0,color:Colors.yellow)),
                          ],
                        )
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.all(8.0),
                    child: InkWell(onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Basement()),
                    );
                    },
                      splashColor: Colors.white12,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.asset('assets/renovations/basement/Basement1.jpg',fit:BoxFit.cover),
                            Text(S.of(context).rnBasements, style: new TextStyle(fontSize: 17.0,color:Colors.yellow)),
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

