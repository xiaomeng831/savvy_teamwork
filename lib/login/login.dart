import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_appfgds/chat/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appfgds/generated/l10n.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{

  //controllers
  TextEditingController _controllerUsername = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  //validate data before sign up with Firebase
  _validateFields() {
    String username = _controllerUsername.text;
    String email = _controllerEmail.text;
    String password = _controllerPassword.text;
    //snack bar message for invalid inputs
    final _message = SnackBar(content: Text(S.of(context).lgINVTA));

    //Username validation: not empty, more than 3 characters, and no special chars OR numbers
    if (username.isNotEmpty && username.length >= 3 && username.length <= 8) { //added max length [buffer] - Nov 11
      if (email.isNotEmpty && email.contains('@') && email.length >= 6 && email.length <= 50) { //added max length [buffer] - Nov 11
        if (password.isNotEmpty && password.length >= 6 && password.length <= 10) { //added max length [buffer] - Nov 11
          Users users = Users();
          users.username = username;
          users.email = email;
          users.password = password;

          _createNewUser(users);
        }
      }
    } else {
      String username_pattern = r'(^[a-zA-Z ]*$)';
      String email_pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@ ((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      String password_pattern = r'(^[a-zA-Z ]*$)';
      RegExp regExp1 = new RegExp(username_pattern);
      RegExp regExp2 = new RegExp(email_pattern);
      RegExp regExp3 = new RegExp(password_pattern);
      if (username.length == 0 || !regExp1.hasMatch(username)) {
        setState(() {
          ScaffoldMessenger.of(context).showSnackBar(_message);
        });
      }
      if (email.length == 0 || !regExp2.hasMatch(email)) {
        setState(() {
          ScaffoldMessenger.of(context).showSnackBar(_message);
        });
      }
      if (password.length == 0 || !regExp3.hasMatch(password)) {
        setState(() {
          ScaffoldMessenger.of(context).showSnackBar(_message);
        });
      }
    }
  }

  _createNewUser(Users users) {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth.createUserWithEmailAndPassword(
      email: users.email,
      password: users.password,
    ).then((firebaseUser){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) =>MyApp()));
    });
  }

  //validate existing user - get user from Firebase DB - login method - added on Nov-07-2021
  _validateExistingUser() {
    String username = _controllerUsername.text;
    String email = _controllerEmail.text;
    String password = _controllerPassword.text;
    final _message = SnackBar(content: Text(S.of(context).lgINVTA));


    //Username validation: not empty, more than 3 characters, and no special chars OR numbers
    if (username.isNotEmpty && username.length >= 3 && username.length <= 8) { //added max length [buffer] - Nov 11
      if (email.isNotEmpty && email.contains('@') && email.length >= 6 && email.length <= 50) { //added max length  [buffer] - Nov 11
        if (password.isNotEmpty && password.length >= 6 && password.length <= 10) { //added max length  [buffer] - Nov 11
          Users users = Users();
          users.username = username;
          users.email = email;
          users.password = password;

          _existingUser(users);
        }
      }
    }
  }

  //sign-in existing user - get user from Firebase DB - login method - added on Nov-07-2021
  _existingUser(Users users) {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth.signInWithEmailAndPassword(
      email: users.email,
      password: users.password,
    ).then((firebaseUser){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) =>MyApp()));
    });
  }

  //facebook login method - added on Nov-07-2021
  Future<UserCredential> signInWithFacebook() async {
    //trigger the sign-in flow
    final LoginResult loginresult = await FacebookAuth.instance
        .login(permissions: ['email', 'public_profile']);

    //create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginresult.accessToken!.token);

    //once signed in, return the user credential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  //google login method - added on Nov-07-2021
  Future<UserCredential> signInWithGoogle() async {
    //trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    //obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    //create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    //once signed in, return the user credential
    return FirebaseAuth.instance.signInWithCredential(credential);
  }

  //LOGIN SCREEN FEATURES
  Widget buildUsername() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.of(context).lgName,
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
            keyboardType: TextInputType.emailAddress,
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
                hintText: S.of(context).lgName,
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
        Text(
          S.of(context).contactEmail,
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
            controller: _controllerEmail,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xFF757575),
                ),
                hintText: S.of(context).contactEmail,
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.of(context).lgPassword,
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
            obscureText: true,
            controller: _controllerPassword,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xFF757575),
                ),
                hintText: S.of(context).lgPassword,
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: 150,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => { _validateExistingUser() }, //validate existing user from Firebase DB
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.white,
        child: Text(
          S.of(context).lgLOGIN,
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

  Widget buildSignUpBtn() {

    return GestureDetector(
      onTap: () => {
        _validateFields()
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: S.of(context).lgDHAA,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'fonts/Roboto-Bold.ttf',
                fontWeight: FontWeight.w500,
              )),
          TextSpan(
              text: S.of(context).lgSU,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)
          ),
        ]),

      ),
    );
  }

  Widget buildFacebookLogin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: 200,
      child: SignInButton(
          Buttons.Facebook,
          onPressed: () { signInWithFacebook(); }, //go to FACEBOOK
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      ),
    );
  }

  Widget buildGoogleLogin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: 200,
      child: SignInButton(
        Buttons.Google,
        onPressed: () async { signInWithGoogle(); },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
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
                style: TextStyle(fontFamily: 'fonts/SourceSansPro-Light.ttf', letterSpacing: 2.0),),
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
                        S.of(context).lgSI,
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
                      buildEmail(),
                      SizedBox(height: 5),
                      buildPassword(),
                      buildSignUpBtn(),
                      buildLoginBtn(),
                      SizedBox(height: 1),
                      buildFacebookLogin(),
                      buildGoogleLogin(),
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



class Users {
  late String _username;
  late String _email;
  late String _password;


  Users();

  String get password => _password;

  String get email => _email;

  String get username => _username;

  set password(String password) {
    _password = password;
  }

  set email(String email) {
    _email = email;
  }

  set username(String username) {
    _username = username;
  }
}