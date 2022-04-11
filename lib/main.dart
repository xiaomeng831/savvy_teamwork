import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'chat/chat.dart';
import 'chat/message.dart';
import 'contact/contact.dart';
import 'estimator/estimator.dart';
import 'generated/l10n.dart';
import 'login/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_appfgds/customHomes/customHomes.dart';
import 'package:flutter_appfgds/renovations/renovations.dart';
import 'package:flutter_appfgds/service/service.dart';


void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MaterialApp(
    home: MyApp(),
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    supportedLocales: S.delegate.supportedLocales,
    localeListResolutionCallback: (locales, supportedLocales) {
      print(locales);
      return;
      }
  ));
}

//for navigation drawer - routes to website and phone button at the bottom of the screen
launcherApp(String url, BuildContext context) async {
  await canLaunch(url) ? await launch(url) : showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('WARNING'),
          content: Text('Could not find a compatible app'),
        );
      }
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final String phone = '+16137943732';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Savvy Renos and Design'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static.wixstatic.com/media/78fe0b_c795912d794f4e3e9f57b1ad70050e4d~mv2.png/v1/fill/w_225,h_225,al_c,q_85,usm_0.66_1.00_0.01/78fe0b_c795912d794f4e3e9f57b1ad70050e4d~mv2.webp'),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                accountName: Text('SAVVY RENOS AND DESIGN',
                  style: TextStyle(fontFamily: 'fonts/Roboto-Bold.ttf'),),
                accountEmail: Text('savvyrenosanddesign@gmail.com'),
              ),
              ListTile(
                title: Text(S.of(context).mainHome, style: TextStyle(
                    fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                    fontSize: 17.0),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
              ListTile(
                title: Text(S.of(context).mainLogin, style: TextStyle(
                    fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                    fontSize: 17.0),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              ListTile(
                title: Text(S.of(context).mainChat, style: TextStyle(
                    fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                    fontSize: 17.0),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chat()),
                  );
                },
              ),
              ListTile(
                title: Text(S.of(context).mainContact, style: TextStyle(
                    fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                    fontSize: 17.0),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contact()),
                  );
                },
              ),
              ListTile(
                title: Text(S.of(context).mainWebsite, style: TextStyle(
                    fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                    fontSize: 17.0),),
                onTap: () {
                  launcherApp('https://www.savvyrenosanddesign.com/', context);
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white70,
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white12,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/logo.jpg'),
                        Text(S.of(context).mainHome, style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => CustomHomes()),);
                  },
                  splashColor: Colors.white12,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                            icon: const Icon(Icons.home),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CustomHomes()),);
                            }),
                        Text(S.of(context).mainCustomHomes, style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Renovations()),
                );},
                splashColor: Colors.white12,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                  IconButton(
                  icon: const Icon(Icons.architecture),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Renovations()),);
                    }),
                      Text(S.of(context).mainRenovations, style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Estimator()),);},
                splashColor: Colors.white12,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: const Icon(Icons.calculate_outlined),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Estimator()),);
                          }),
                      Text(S.of(context).mainEstimator, style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
    ),
    ),
            ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Service()),);},
                  splashColor: Colors.white12,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    IconButton(
                    icon: const Icon(Icons.design_services),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Service()),);
                      }),
                        Text(S.of(context).mainServices, style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()),);},
                  splashColor: Colors.white12,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    IconButton(
                    icon: const Icon(Icons.mail_outlined),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()),);
                      }),
                        Text(S.of(context).mainContact, style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            launcherApp('tel:${phone}', context);
          },
          child: const Icon(Icons.phone),
          hoverColor: Colors.red[900],
          backgroundColor: Colors.grey[800],
          tooltip: 'Call Us',
        )
    );
  }
}