
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appfgds/contact/image_upload.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_appfgds/generated/l10n.dart';

enum ImageSourceType { gallery, camera }

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  final TextEditingController _controllerFullName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerMessage = TextEditingController();
  bool phoneValidate = false;
  bool emailValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Savvy Renos and Design'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
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
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      const Text(
                        'savvyrenosanddesign@gmail.com',
                        style: TextStyle(
                          fontFamily: 'fonts/Roboto-Bold.ttf',
                          letterSpacing: 1.0,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '613-558-3732',
                        style: TextStyle(
                          fontFamily: 'fonts/Roboto-Bold.ttf',
                          letterSpacing: 1.0,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      buildFullName(),
                      SizedBox(height: 10,),
                      buildEmail(),
                      SizedBox(height: 10,),
                      buildPhone(),
                      SizedBox(height: 10,),
                      buildMessage(),
                      buildSubmit(),
                      SizedBox(height: 25,),
                      SizedBox(
                        width: 400,
                      child: Text(S.of(context).contactUploadPrompt, style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'fonts/Roboto-Bold.ttf',
                        fontSize: 14,
                      ),)),
                      SizedBox(height: 12,),
                      buildUpload(),
                      //SizedBox(height: 5,),
                    ],
                  ),
                ),
              )],
          ),
        ),
      ),
    );
  }

    Widget buildFullName() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(S.of(context).contactFullName,
            style: TextStyle(
              color: Colors.white, fontSize: 16,
              fontFamily: 'fonts/Roboto-Bold.ttf',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 1),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0,2))
                ]
            ),
            height: 40,
            child: TextField(
              controller: _controllerFullName,
              keyboardType: TextInputType.name,
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

    Widget buildEmail() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(S.of(context).contactEmail,
            style: TextStyle(
              color: Colors.white, fontSize: 16,
              fontFamily: 'fonts/Roboto-Bold.ttf',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 1),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow( color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0,2)
                  )
                ]
            ),
            height: 40,
            child: TextField(
              controller: _controllerEmail,
              keyboardType: TextInputType.emailAddress,
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
          ),
          // Container(
          //   width: 100.0,
          //   height: 20.0,
          //   margin: EdgeInsets.symmetric(vertical: 2.0),
          //   child: SizedBox.expand(
          //     child: OutlinedButton(
          //       onPressed: () {
          //         _validateEmail();},
          //       style: OutlinedButton.styleFrom( primary: Colors.grey[800], backgroundColor: Colors.grey[200]),
          //       child: Text('Validate Email', style: TextStyle(fontSize: 10)),
          //
          //     ),
          //   ),
          // )
        ],
      );
    }

    Widget buildPhone() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            S.of(context).contactPhone,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'fonts/Roboto-Bold.ttf',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 1),
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
            height: 40,
            child: TextField(
              controller: _controllerPhone,
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
          ),
          // Container(
          //   width: 100.0,
          //   height: 20.0,
          //   margin: EdgeInsets.symmetric(vertical: 2.0),
          //   child: SizedBox.expand(
          //   child: OutlinedButton(
          //   onPressed: () {
          //     _validatePhone();},
          //   style: OutlinedButton.styleFrom( primary: Colors.grey[800], backgroundColor: Colors.grey[200]),
          //   child: const Text('Validate Phone', style: TextStyle(fontSize: 10)),
          //
          //     ),
          //   ),
          // )
        ]
      );
    }

    Widget buildMessage() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            S.of(context).contactMessage,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'fonts/Roboto-Bold.ttf',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 1),
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
            height: 80,
            child: TextField(
              controller: _controllerMessage,
              maxLines: 5,
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

    Widget buildSubmit() {
      return Container(
        alignment: Alignment.center,
        height: 70,
        width: 160,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[300],
          ),          //elevation: 5,
          onPressed: () {
            _validatePhone();
            _validateEmail();
            if(phoneValidate==true && emailValidate==true){
            launchEmail(
              fullName: _controllerFullName.text,
              email: _controllerEmail.text,
              phone: _controllerPhone.text,
              message: _controllerMessage.text,);
            _controllerFullName.clear();
            _controllerMessage.clear();
            _controllerEmail.clear();
            _controllerPhone.clear();
          } else {
              ScaffoldMessenger.of(this.context).showSnackBar(
                SnackBar(content: Text(S.of(context).contactValid),
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(seconds: 2),
                    margin:
                    EdgeInsets.only(bottom: MediaQuery.of(this.context).size.height - 150,
                        right: 20,
                        left: 20)));
              }
            },
          child: Text(
          S.of(context).contactSubmit,
          style: TextStyle(
            color: Color(0xFF757575),
            fontWeight: FontWeight.bold,
            fontFamily: 'fonts/Roboto-Bold.ttf',
            fontSize: 18,
          ),
        ),
        ),
         // color: Colors.white
      );
    }

    Widget buildUpload() {
    return Container(
      alignment: Alignment.center,
      width: 170,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[300],
        ),          //elevation: 5,
        onPressed: () {
            Navigator.push(this.context, MaterialPageRoute(builder: (context) => ImageUpload()));
        },
        child: Text(
          S.of(context).contactUpload,
          style: TextStyle(
            color: Color(0xFF757575),
            fontWeight: FontWeight.bold,
            fontFamily: 'fonts/Roboto-Bold.ttf',
            fontSize: 18,
          ),
        ),
      ),
      // color: Colors.white
    );
  }

    Widget textField({
    required TextEditingController controller
    }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white
            ),
          ),
        ],
      );

  Future launchEmail({
    required String fullName,
    required String email,
    required String phone,
    required String message
      }) async {
    String body = " Client's name: " + fullName + "\nEmail: " + email + "\nPhone: " + phone + "\nMessage: " + message;
    String emailTo = "savvyrenosanddesign@gmail.com"; //temporary using personal email for testing purposes
    final url = 'mailto:$emailTo?subject=${Uri.encodeFull("Client's quote request")}&body=${Uri.encodeFull(body)}';
    if(await canLaunch(url)) {
      await launch(url);
    }
  }

  _validatePhone() {
    String phone = _controllerPhone.text;
    SnackBar _snackBarPhoneError = SnackBar(content: Text(S.of(context).contactPhonePrompt),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        margin:
        EdgeInsets.only(bottom: MediaQuery.of(this.context).size.height - 150,
        right: 20,
        left: 20));
    SnackBar _snackBarPhoneCorrect = SnackBar(content: Text(S.of(context).contactPhoneCorrect),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        margin:
        EdgeInsets.only(bottom: MediaQuery.of(this.context).size.height - 150,
            right: 20,
            left: 20));
    if (phone.isEmpty || phone.length != 10) {
          //ScaffoldMessenger.of(this.context).showSnackBar(_snackBarPhoneError);
          setState(() {
            phoneValidate=false;
          });
        }
    else {
          //ScaffoldMessenger.of(this.context).showSnackBar(_snackBarPhoneCorrect);
          setState(() {
            phoneValidate = true;
          });

        }
  }
  _validateEmail() {
    String email = _controllerEmail.text;
    SnackBar _snackBarEmailError = SnackBar(content: Text(S.of(context).contactEmailPrompt),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      margin:
      EdgeInsets.only(bottom: MediaQuery.of(this.context).size.height - 150,
          right: 20,
          left: 20) ,);
    SnackBar _snackBarEmailCorrect = SnackBar(content: Text(S.of(context).contactEmailCorrect),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      margin:
      EdgeInsets.only(bottom: MediaQuery.of(this.context).size.height - 150,
          right: 20,
          left: 20) ,);
    if (email.isEmpty || !email.contains('@')) {
        //ScaffoldMessenger.of(this.context).showSnackBar(_snackBarEmailError);
    }
    else {
      //ScaffoldMessenger.of(this.context).showSnackBar(_snackBarEmailCorrect);
      emailValidate = true;
    }
  }
}
