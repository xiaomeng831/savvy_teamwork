import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfgds/chat/chat.dart';
import 'package:flutter_appfgds/generated/l10n.dart';
import 'package:flutter_appfgds/login/login.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class Estimator extends StatefulWidget {
  const Estimator({Key? key}) : super(key: key);

  @override
  _EstimatorState createState() => _EstimatorState();
}

class _EstimatorState extends State<Estimator> {
  var value;
  var selectedValue1;
  var selectedValue2;
  var selectedValue3;
  var selectedValue4;
  var selectedValue5;
  var selectedValue6;
  var selectedValue7;

  final fullNameCont = TextEditingController();
  final emailFromCont = TextEditingController();
  final phoneCont = TextEditingController();
  final messageCont = TextEditingController();
  bool emailValidate = false;
  bool phoneValidate = false;

  //Chip
  final mudroom_items = [
    '${S.current.BenchPlans}',
    '${S.current.Hooks}',
    '${S.current.HallTrees}',
    '${S.current.ShoeRacks}',
    '${S.current.Consoles}',
    '${S.current.Shelves}',
    '${S.current.CoatHangers}'
  ];
  final strucfixes_items = [
    '${S.current.FoundationalCracks}',
    '${S.current.Roof}',
    '${S.current.WindowsAndDoors}',
    '${S.current.ElectricalFixes}',
    '${S.current.Plumbing}',
    '${S.current.Heating}',
    '${S.current.AirConditioning}',
    '${S.current.Insulation}',
    '${S.current.LoadBeringWalls}',
    '${S.current.AirDucts}',
    '${S.current.WallFixations}',
    '${S.current.BasementFinishing}',
    '${S.current.Other}'
  ];
  final poolarea_items = [
    '${S.current.WaterproofMaterial}',
    '${S.current.Grid}',
    '${S.current.Concrete}',
    '${S.current.WaterlineTiles}',
    '${S.current.PoolPlaster}',
    '${S.current.PoolHeater}',
    '${S.current.WaterPurifier}',
    '${S.current.PatioSetInstalation}'
  ];
  final basement_items = [
    '${S.current.DraftAfloorPlan}',
    '${S.current.RequireInspection}',
    '${S.current.ElectricalNeeds}',
    '${S.current.PlumbingNeeds}',
    '${S.current.Insulation}',
    '${S.current.Drywall}',
    '${S.current.Flooring}',
    '${S.current.DiscussYourBudget}'
  ];

  //DropDownMenu
  List<String> closet_items = <String>[
    '${S.current.Wood}',
    '${S.current.Melamine}',
    '${S.current.MDF}',
    '${S.current.Resin}',
    '${S.current.ParticleBoard}',
    '${S.current.Laminates}',
    '${S.current.Thermofoil}'
  ];
  List<String> staircase_items = <String>[
    '${S.current.Stone}',
    '${S.current.Granite}',
    '${S.current.Wood}',
    '${S.current.Carpeted}',
    '${S.current.Glass}',
    '${S.current.Metal}',
    '${S.current.CustomRailings}'
  ];
  List<String> floor_items = <String>[
    '${S.current.Alternatives}',
    '${S.current.Carpet}',
    '${S.current.StoneTile}',
    '${S.current.Ceramic}',
    '${S.current.Vinyl}',
    '${S.current.Laminate}',
    '${S.current.Hardwood}'
  ];
  List<String> kitchen_countertops_items = <String>[
    '${S.current.EngineeredStone}',
    '${S.current.Slate}',
    '${S.current.Soapstone}',
    '${S.current.Travertine}',
    '${S.current.Stone}'
  ];
  List<String> kitchen_cabinets_items = <String>[
    '${S.current.friendlyMaterial}',
    '${S.current.StainlessSteel}',
    '${S.current.Laminates}',
    '${S.current.Thermofoil}',
    '${S.current.Hardwood}'
  ];
  List<String> backyard_deck_items = <String>[
    '${S.current.BarbedWire}',
    '${S.current.ChainLinks}',
    '${S.current.Masonry}',
    '${S.current.TreatedWood}',
    '${S.current.Metal}',
    '${S.current.RedwoodAndTeak}',
    '${S.current.Composite}',
    '${S.current.Vinyl}',
    '${S.current.Cedar}'
  ];
  List<String> deck_items = <String>[
    '${S.current.TropicalHardwood}',
    '${S.current.Aluminium}',
    '${S.current.PVC}',
    '${S.current.Composites}',
    '${S.current.PressureTreatedLumber}',
    '${S.current.RedwoodAndCedar}'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).mainEstimator),
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
                accountName: Text(
                  'SAVVY RENOS AND DESIGN',
                  style: TextStyle(
                      fontFamily: 'fonts/SourceSansPro-Light.ttf',
                      letterSpacing: 2.0),
                ),
                accountEmail: Text('savvyrenosanddesign@gmail.com'),
              ),
              ListTile(
                title: Text(
                  S.of(context).mainHome,
                  style: TextStyle(
                      fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                      fontSize: 17.0),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  S.of(context).mainLogin,
                  style: TextStyle(
                      fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                      fontSize: 17.0),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  S.of(context).mainChat,
                  style: TextStyle(
                      fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                      fontSize: 17.0),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chat()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  S.of(context).mainContact,
                  style: TextStyle(
                      fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                      fontSize: 17.0),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  S.of(context).mainWebsite,
                  style: TextStyle(
                      fontFamily: 'fonts/SourceSansPro-Bold.ttf',
                      fontSize: 17.0),
                ),
                onTap: () {
                  launcherApp('https://www.savvyrenosanddesign.com/', context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esCLOSET),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton(
                        items: closet_items
                            .map(
                              (value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                ),
                                value: value,
                              ),
                            )
                            .toList(),
                        onChanged: (selectedValueForCloset) {
                          setState(() {
                            if (selectedValueForCloset == null){
                            selectedValue1 = " ";} else
                              {selectedValue1 = selectedValueForCloset;}
                          });
                        },
                        value: selectedValue1,
                        hint: Text(S.of(context).esSCM),
                      )
                    ],
                  )),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esMUDROOM),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        filterChipWidget(
                          chipName: mudroom_items[0],
                        ),
                        filterChipWidget(chipName: mudroom_items[1]),
                        filterChipWidget(chipName: mudroom_items[2]),
                        filterChipWidget(chipName: mudroom_items[3]),
                        filterChipWidget(chipName: mudroom_items[4]),
                        filterChipWidget(chipName: mudroom_items[5]),
                        filterChipWidget(chipName: mudroom_items[6]),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esSTAIRCASE),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton(
                        items: staircase_items
                            .map(
                              (value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                ),
                                value: value,
                              ),
                            )
                            .toList(),
                        onChanged: (selectedValueForCloset) {
                          setState(() {
                            if (selectedValueForCloset == null){
                              selectedValue2 = " ";} else
                            {selectedValue2 = selectedValueForCloset;}
                          });
                        },
                        value: selectedValue2,
                        hint: Text(S.of(context).esSSM),
                      )
                    ],
                  )),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esFLOORS),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton(
                        items: floor_items
                            .map(
                              (value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                ),
                                value: value,
                              ),
                            )
                            .toList(),
                        onChanged: (selectedValueForCloset) {
                          setState(() {
                            if (selectedValueForCloset == null){
                              selectedValue3 = " ";} else
                            {selectedValue3 = selectedValueForCloset;}
                          });
                        },
                        value: selectedValue3,
                        hint: Text(S.of(context).esSFM),
                      )
                    ],
                  )),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esKC1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton(
                        items: kitchen_countertops_items
                            .map(
                              (value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                ),
                                value: value,
                              ),
                            )
                            .toList(),
                        onChanged: (selectedValueForCloset) {
                          setState(() {
                            if (selectedValueForCloset == null){
                              selectedValue4 = " ";} else
                            {selectedValue4 = selectedValueForCloset;}
                          });
                        },
                        value: selectedValue4,
                        hint: Text(S.of(context).esSKC1),
                      )
                    ],
                  )),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esKC2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton(
                        items: kitchen_cabinets_items
                            .map(
                              (value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                ),
                                value: value,
                              ),
                            )
                            .toList(),
                        onChanged: (selectedValueForCloset) {
                          setState(() {
                            if (selectedValueForCloset == null){
                              selectedValue5 = " ";} else
                            {selectedValue5 = selectedValueForCloset;}
                          });
                        },
                        value: selectedValue5,
                        hint: Text(S.of(context).esSKC2),
                      )
                    ],
                  )),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esSF),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        filterChipWidget(
                          chipName: strucfixes_items[0],
                        ),
                        filterChipWidget(chipName: strucfixes_items[1]),
                        filterChipWidget(chipName: strucfixes_items[2]),
                        filterChipWidget(chipName: strucfixes_items[3]),
                        filterChipWidget(chipName: strucfixes_items[4]),
                        filterChipWidget(chipName: strucfixes_items[5]),
                        filterChipWidget(chipName: strucfixes_items[6]),
                        filterChipWidget(chipName: strucfixes_items[7]),
                        filterChipWidget(chipName: strucfixes_items[8]),
                        filterChipWidget(chipName: strucfixes_items[9]),
                        filterChipWidget(chipName: strucfixes_items[10]),
                        filterChipWidget(chipName: strucfixes_items[11]),
                        filterChipWidget(chipName: strucfixes_items[12]),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esPA),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        filterChipWidget(
                          chipName: poolarea_items[0],
                        ),
                        filterChipWidget(chipName: poolarea_items[1]),
                        filterChipWidget(chipName: poolarea_items[2]),
                        filterChipWidget(chipName: poolarea_items[3]),
                        filterChipWidget(chipName: poolarea_items[4]),
                        filterChipWidget(chipName: poolarea_items[5]),
                        filterChipWidget(chipName: poolarea_items[6]),
                        filterChipWidget(chipName: poolarea_items[7]),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esBACKYARD),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton(
                        items: backyard_deck_items
                            .map(
                              (value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                ),
                                value: value,
                              ),
                            )
                            .toList(),
                        onChanged: (selectedValueForCloset) {
                          setState(() {
                            if (selectedValueForCloset == null){
                              selectedValue6 = " ";} else
                            {selectedValue6 = selectedValueForCloset;}
                          });
                        },
                        value: selectedValue6,
                        hint: Text(S.of(context).esSBPF),
                      )
                    ],
                  )),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esDECKING),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton(
                        items: deck_items
                            .map(
                              (value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                ),
                                value: value,
                              ),
                            )
                            .toList(),
                        onChanged: (selectedValueForCloset) {
                          setState(() {
                            if (selectedValueForCloset == null){
                              selectedValue7 = " ";} else
                            {selectedValue7 = selectedValueForCloset;}
                          });
                        },
                        value: selectedValue7,
                        hint: Text(S.of(context).esSD),
                      )
                    ],
                  )),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esBASEMENT),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        filterChipWidget(
                          chipName: basement_items[0],
                        ),
                        filterChipWidget(chipName: basement_items[1]),
                        filterChipWidget(chipName: basement_items[2]),
                        filterChipWidget(chipName: basement_items[3]),
                        filterChipWidget(chipName: basement_items[4]),
                        filterChipWidget(chipName: basement_items[5]),
                        filterChipWidget(chipName: basement_items[6]),
                        filterChipWidget(chipName: basement_items[7]),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer(S.of(context).esCI),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                        S.of(context).esNAME,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'fonts/Roboto-Bold.ttf',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(controller: fullNameCont),
                      Text(
                        S.of(context).esEAMIL,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'fonts/Roboto-Bold.ttf',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(controller: emailFromCont),
                      Text(
                        S.of(context).esPHONE,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'fonts/Roboto-Bold.ttf',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(controller: phoneCont),
                      ElevatedButton(
                          onPressed: () {
                            _validatePhone();
                            _validateEmail();
                            if(phoneValidate==true && emailValidate==true) {
                              launchEmail(
                                fullName: fullNameCont.text,
                                emailFrom: emailFromCont.text,
                                phone: phoneCont.text,
                                message: messageCont.text,);
                              fullNameCont.clear();
                              emailFromCont.clear();
                              phoneCont.clear();
                              messageCont.clear();
                            } else {
                              ScaffoldMessenger.of(this.context).showSnackBar(
                                  SnackBar(content: Text(S.current.contactValid),
                                  behavior: SnackBarBehavior.floating,
                                  duration: const Duration(seconds: 2),
                                  margin:
                                    EdgeInsets.only(bottom: MediaQuery.of(this.context).size.height -150,
                                    right: 20,
                                    left: 20)));
                            }
                            },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[800],
                          ),
                          child: Text(S.of(context).esSUBMIT,
                              style: new TextStyle(
                                  fontSize: 17.0, color: Colors.white)))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  //launching application but not sending email.
  Future<void> launchEmail({required String fullName, required String emailFrom, required String phone, required String message}) async {

    String email = "savvyrenosanddesign@gmail.com"; //temporary email for testing purposes


    String message = "\n" + S.current.es1 + " " +
        selectedValue1.toString() +
        "\n" + S.current.es2 + " " +
        mudroom_items.toString() +
        "\n" + S.current.es3 + " " +
        selectedValue2.toString() +
        "\n" + S.current.es4 + " " +
        selectedValue3.toString() +
        "\n" + S.current.es5 + " " +
        selectedValue4.toString() +
        "\n" + S.current.es6 + " " +
        selectedValue5.toString() +
        "\n" + S.current.es7 + " " +
        strucfixes_items.toString() +
        "\n" + S.current.es8 + " " +
        selectedValue6.toString() +
        "\n" + S.current.es9 + " " +
        selectedValue7.toString() +
        "\n" + S.current.es10 + " " +
        kitchen_cabinets_items.toString() +
        "\n" + S.current.es11 + " " +
        kitchen_countertops_items.toString();

    String body = S.current.es12 + " " + fullName + "\n" + S.current.es13 + " " + phone + "\n" + S.current.es14 + " "+ emailFrom +
        "\n\n" + S.current.es15 + "\n" + message;

    final url ="mailto:$email?subject=${Uri.encodeFull("[ACTION NEEDED] Quote request")}&body=${Uri.encodeFull(body)}";

    if (await canLaunch(url)){
      await launch(url);
    }
  }

  _validatePhone() {
    String phone = phoneCont.text;
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
    String email = emailFromCont.text;
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

//for Mudroom, Structural Fixes, Pool Area and Basement
Widget _titleContainer(String title) {
  return Text(
    title,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  const filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: Colors.grey,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Colors.red,
    );
  }
}
