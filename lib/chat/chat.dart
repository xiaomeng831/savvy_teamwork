import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/generated/l10n.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appfgds/login/login.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';


import '../main.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _Chat createState() => _Chat();

}


class _Chat extends State<Chat> {

  //controllers
  TextEditingController _controllerUsername = TextEditingController();
  TextEditingController _controllerPhone = TextEditingController();
  TextEditingController _controllerMessage = TextEditingController();

  String username_pattern = r'(^[a-zA-Z ]*$)';
  String phone_pattern = r'(^[0-9]*$)';
  String owners_phone_number = '+1-(613)7943732';


  //validate data before sign up with Firebase
  _validateFields() {
    String username = _controllerUsername.text;
    String phone = _controllerPhone.text;
    String message = _controllerMessage.text;

    //snack bar message for invalid inputs
    final _message = SnackBar(content: Text(S.current.lgINVTA));

    //Username validation: not empty, more than 3 characters, and no special chars OR numbers
    if (username.isNotEmpty && username.contains(username_pattern) && username.length >= 3 && username.length <= 8) { //added max length [buffer] - Nov 29
      if (phone.isNotEmpty && phone.contains(phone_pattern) && phone.length >= 6 && phone.length <= 10) { //added max length [buffer] - Nov 29
        if (message.isNotEmpty && message.length >= 1 && message.length <= 300) { //added max length [buffer] - Nov 29
          UserPhone userPhone = UserPhone();
          userPhone.username = username;
          userPhone.phone = phone;
          userPhone.message = message;

          _createNewPhone(userPhone);
        }
      }
    }
  }

  _createNewPhone(UserPhone userPhone) {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth.signInWithPhoneNumber(userPhone.phone).then((firebaseUser){
          MaterialPageRoute(builder: (context) => MyApp());
    });
  }

  launchWhatsApp() async {
    String built_in_message =  S.current.chatName + " " + _controllerUsername.text + " " + S.current.chatPhone + " " + _controllerPhone.text + " " + S.current.chatQuery + " " + _controllerMessage.text;

    final link = WhatsAppUnilink(
      phoneNumber: owners_phone_number,
      text: built_in_message,
    );
    await launch('$link');
  }


  //LOGIN SCREEN FEATURES
  Widget buildUsername() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.current.lgName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'fonts/Roboto-Bold.ttf',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            controller: _controllerUsername,
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.account_box_rounded,
                  color: Color(0xFF757575),
                ),
                hintText: S.current.lgName,
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPhone() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.current.contactPhone,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'fonts/Roboto-Bold.ttf',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            controller: _controllerPhone,
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Color(0xFF757575),
                ),
                hintText: S.current.contactPhone,
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildMessage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.current.contactMessage,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'fonts/Roboto-Bold.ttf',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 1),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 100,
          child: TextField(
            controller: _controllerMessage,
            style: const TextStyle(
              color: Colors.black87,
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildMessageBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 55),
      width: 200,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => { _validateFields, launchWhatsApp() }, //validate existing user from Firebase DB
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.white,
        child: Text(
          S.current.chatSend,
          style: TextStyle(
            color: Color(0xFF757575),
            fontWeight: FontWeight.bold,
            fontFamily: 'fonts/Roboto-Bold.ttf',
            fontSize: 18,
          ),
        ),
      ),
    );
  }




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
                style: TextStyle(fontFamily: 'fonts/SourceSansPro-Light.ttf',
                    letterSpacing: 2.0),),
              accountEmail: Text('savvyrenosanddesign@gmail.com'),
            ),
            ListTile(
              title: Text(S.of(context).mainHome, style: TextStyle(
                  fontFamily: 'fonts/SourceSansPro-Bold.ttf', fontSize: 17.0),),
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
                Navigator.pop(context);
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
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x66757575),
                        Color(0x99757575),
                        Color(0xCC757575),
                        Color(0xFF757575),
                      ]
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Text(
                        S.current.CHAT,
                        style: TextStyle(
                          fontFamily: 'fonts/Roboto-Bold.ttf',
                          letterSpacing: 3.0,
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      buildUsername(),
                      SizedBox(height: 5),
                      buildPhone(),
                      SizedBox(height: 5),
                      buildMessage(),
                      buildMessageBtn()
                    ],
                  ),
                ),
              )],
          ),
        ),
      ),
    );

  }
}



class UserPhone {
  late String _username;
  late String _phone;
  late String _message;


  UserPhone();

  String get message => _message;

  String get phone => _phone;

  String get username => _username;

  set message(String message) {
    _message = message;
  }

  set phone(String phone) {
    _phone = phone;
  }

  set username(String username) {
    _username = username;
  }
}