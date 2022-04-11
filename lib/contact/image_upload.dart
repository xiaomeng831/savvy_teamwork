
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:io' as io;
import 'package:flutter_appfgds/generated/l10n.dart';

class ImageUpload extends StatefulWidget {

  const ImageUpload({Key? key}) : super(key: key);
  @override
  ImageUploadState createState() => ImageUploadState();
}

class ImageUploadState extends State<ImageUpload> {
  dynamic _camimage;
  dynamic _gallimage;
  dynamic imagePicker;
  dynamic type;
  bool phoneValidate = false;
  final TextEditingController _controllerPhone = TextEditingController();

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).iuTitle), backgroundColor: Colors.grey[800],),
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
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        buildAttachFromCamera(),
                        SizedBox(height: 15,),
                        buildAttachFromGallery(),
                        SizedBox(height: 15,),
                        buildPhone(),
                        upload(),
                        //SizedBox(height: 5,),
                      ],
                    ),
                  ),
                )
              )
            ],
            ),
          ),
        )
    );
  }

  Widget buildAttachFromCamera() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomLeft,
          child: GestureDetector(
            onTap: () async {
              XFile? image = await imagePicker.pickImage(
                  source: ImageSource.camera, imageQuality: 50, preferredCameraDevice: CameraDevice.front);
              setState(() {
                _camimage = File(image!.path);
              });
            },
            child: SizedBox(
              width: 180,
              height: 180,
              child: _camimage != null
                  ? Image.file(
                _camimage,
              )
                  : Container(
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                ),
                child: const Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        /*   const SizedBox(height: 7 ,),
          Container(
            alignment: Alignment.bottomLeft,
            child: const Text("Upload image from Camera", style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontFamily: 'fonts/Roboto-Bold.ttf',
      fontSize: 17,)
            ),
          )*/
      ],
    );
  }

  Widget buildAttachFromGallery() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomLeft,
          child: GestureDetector(
            onTap: () async {
              XFile? image = await imagePicker.pickImage(
                  source: ImageSource.gallery, imageQuality: 50, preferredCameraDevice: CameraDevice.front);
              setState(() {
                _gallimage = File(image!.path);
              });
            },
            child: SizedBox(
              width: 180,
              height: 180,
              child: _gallimage != null
                  ? Image.file(
                _gallimage,
              )
                  : Container(
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                ),
                child: const Icon(
                  Icons.image,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        /* const SizedBox(height: 7 ,),
        Container(
          alignment: Alignment.bottomLeft,
          child: const Text("Upload image from Gallery", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'fonts/Roboto-Bold.ttf',
            fontSize: 17,)
          ),
        )*/
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
        SizedBox(height: 1) ,
        Container(
          width: 380,
          alignment: Alignment.topLeft,
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
            style: TextStyle(
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

  Widget upload() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: 150,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          _validatePhone();
          if (phoneValidate==true){
            uploadCameraImageToFirebase(this.context);
            uploadGalleryImageToFirebase(this.context);
            clearImage();
            _controllerPhone.clear();}
          else {
            ScaffoldMessenger.of(this.context).showSnackBar(
                SnackBar(content: Text(S.current.contactPhonePrompt),
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(seconds: 2),
                    margin:
                    EdgeInsets.only(bottom: MediaQuery.of(this.context).size.height - 150,
                        right: 20,
                        left: 20)));
          }
        },
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          S.current.iuStorage,
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

  Future uploadCameraImageToFirebase(BuildContext context) async {
    String fileName = basename(_camimage!.path);
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.
    instance.ref().child('Clients images').child('/$fileName');
    final metadata = firebase_storage.SettableMetadata (customMetadata: {
      'Phone': _controllerPhone.text});
    firebase_storage.UploadTask uploadTask = ref.putFile(io.File(_camimage!.path), metadata);
  }

  Future uploadGalleryImageToFirebase(BuildContext context) async {
    String fileName = basename(_gallimage!.path);
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.
    instance.ref().child('Clients images').child('/$fileName');
    final metadata = firebase_storage.SettableMetadata (customMetadata: {
      'Phone': _controllerPhone.text});
    firebase_storage.UploadTask uploadTask = ref.putFile(io.File(_gallimage!.path), metadata);
  }

  clearImage() {
    setState(() {
      _camimage = null;
      _gallimage = null;
    });
  }

  _validatePhone() {
    String phone = _controllerPhone.text;
    SnackBar _snackBarPhoneError = SnackBar(content: Text(S.current.contactPhonePrompt),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        margin:
        EdgeInsets.only(bottom: MediaQuery.of(this.context).size.height - 150,
            right: 20,
            left: 20));
    SnackBar _snackBarPhoneCorrect = SnackBar(content: Text(S.current.contactPhoneCorrect),
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

}