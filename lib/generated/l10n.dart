// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get mainHome {
    return Intl.message(
      'Home',
      name: 'mainHome',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get mainLogin {
    return Intl.message(
      'Login',
      name: 'mainLogin',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get mainChat {
    return Intl.message(
      'Chat',
      name: 'mainChat',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get mainContact {
    return Intl.message(
      'Contact Us',
      name: 'mainContact',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get mainWebsite {
    return Intl.message(
      'Website',
      name: 'mainWebsite',
      desc: '',
      args: [],
    );
  }

  /// `CustomHomes`
  String get mainCustomHomes {
    return Intl.message(
      'CustomHomes',
      name: 'mainCustomHomes',
      desc: '',
      args: [],
    );
  }

  /// `Renovations`
  String get mainRenovations {
    return Intl.message(
      'Renovations',
      name: 'mainRenovations',
      desc: '',
      args: [],
    );
  }

  /// `Estimator`
  String get mainEstimator {
    return Intl.message(
      'Estimator',
      name: 'mainEstimator',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get mainServices {
    return Intl.message(
      'Services',
      name: 'mainServices',
      desc: '',
      args: [],
    );
  }

  /// `If you want to upload your image please click here:`
  String get contactUploadPrompt {
    return Intl.message(
      'If you want to upload your image please click here:',
      name: 'contactUploadPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get contactFullName {
    return Intl.message(
      'Full Name',
      name: 'contactFullName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get contactEmail {
    return Intl.message(
      'Email',
      name: 'contactEmail',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get contactPhone {
    return Intl.message(
      'Phone',
      name: 'contactPhone',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get contactMessage {
    return Intl.message(
      'Message',
      name: 'contactMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please type in your valid email and phone number`
  String get contactValid {
    return Intl.message(
      'Please type in your valid email and phone number',
      name: 'contactValid',
      desc: '',
      args: [],
    );
  }

  /// `SUBMIT`
  String get contactSubmit {
    return Intl.message(
      'SUBMIT',
      name: 'contactSubmit',
      desc: '',
      args: [],
    );
  }

  /// `UPLOAD`
  String get contactUpload {
    return Intl.message(
      'UPLOAD',
      name: 'contactUpload',
      desc: '',
      args: [],
    );
  }

  /// `Please type in your phone number in 10 digits format`
  String get contactPhonePrompt {
    return Intl.message(
      'Please type in your phone number in 10 digits format',
      name: 'contactPhonePrompt',
      desc: '',
      args: [],
    );
  }

  /// `Your phone number is in correct format, you are good to go`
  String get contactPhoneCorrect {
    return Intl.message(
      'Your phone number is in correct format, you are good to go',
      name: 'contactPhoneCorrect',
      desc: '',
      args: [],
    );
  }

  /// `Please type in your valid email address`
  String get contactEmailPrompt {
    return Intl.message(
      'Please type in your valid email address',
      name: 'contactEmailPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Your email is in correct format, you are good to go`
  String get contactEmailCorrect {
    return Intl.message(
      'Your email is in correct format, you are good to go',
      name: 'contactEmailCorrect',
      desc: '',
      args: [],
    );
  }

  /// `Image Upload`
  String get iuTitle {
    return Intl.message(
      'Image Upload',
      name: 'iuTitle',
      desc: '',
      args: [],
    );
  }

  /// `Upload image to the Storage`
  String get iuStorage {
    return Intl.message(
      'Upload image to the Storage',
      name: 'iuStorage',
      desc: '',
      args: [],
    );
  }

  /// `Cassa Moderna`
  String get chTitlecM {
    return Intl.message(
      'Cassa Moderna',
      name: 'chTitlecM',
      desc: '',
      args: [],
    );
  }

  /// `Custome Homes`
  String get chTitlecH {
    return Intl.message(
      'Custome Homes',
      name: 'chTitlecH',
      desc: '',
      args: [],
    );
  }

  /// `The Manor`
  String get chTitletM {
    return Intl.message(
      'The Manor',
      name: 'chTitletM',
      desc: '',
      args: [],
    );
  }

  /// `Exterior front`
  String get chExterior {
    return Intl.message(
      'Exterior front',
      name: 'chExterior',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen`
  String get chKitchen {
    return Intl.message(
      'Kitchen',
      name: 'chKitchen',
      desc: '',
      args: [],
    );
  }

  /// `Living room`
  String get chLiving {
    return Intl.message(
      'Living room',
      name: 'chLiving',
      desc: '',
      args: [],
    );
  }

  /// `Family room`
  String get chFamily {
    return Intl.message(
      'Family room',
      name: 'chFamily',
      desc: '',
      args: [],
    );
  }

  /// `Dining room`
  String get chDining {
    return Intl.message(
      'Dining room',
      name: 'chDining',
      desc: '',
      args: [],
    );
  }

  /// `Bar`
  String get chBar {
    return Intl.message(
      'Bar',
      name: 'chBar',
      desc: '',
      args: [],
    );
  }

  /// `Foyer`
  String get chFoyer {
    return Intl.message(
      'Foyer',
      name: 'chFoyer',
      desc: '',
      args: [],
    );
  }

  /// `Staircase`
  String get chStaircase {
    return Intl.message(
      'Staircase',
      name: 'chStaircase',
      desc: '',
      args: [],
    );
  }

  /// `Upstairs hallway`
  String get chUpHall {
    return Intl.message(
      'Upstairs hallway',
      name: 'chUpHall',
      desc: '',
      args: [],
    );
  }

  /// `Den`
  String get chDen {
    return Intl.message(
      'Den',
      name: 'chDen',
      desc: '',
      args: [],
    );
  }

  /// `Master bedroom`
  String get chMasBed {
    return Intl.message(
      'Master bedroom',
      name: 'chMasBed',
      desc: '',
      args: [],
    );
  }

  /// `Master washroom`
  String get chMasWash {
    return Intl.message(
      'Master washroom',
      name: 'chMasWash',
      desc: '',
      args: [],
    );
  }

  /// `Master closet`
  String get chMasClo {
    return Intl.message(
      'Master closet',
      name: 'chMasClo',
      desc: '',
      args: [],
    );
  }

  /// `Upstari washroom`
  String get chUpWash {
    return Intl.message(
      'Upstari washroom',
      name: 'chUpWash',
      desc: '',
      args: [],
    );
  }

  /// `Backyard pool`
  String get chBackPool {
    return Intl.message(
      'Backyard pool',
      name: 'chBackPool',
      desc: '',
      args: [],
    );
  }

  /// `Mainfloor washroom`
  String get chMainWash {
    return Intl.message(
      'Mainfloor washroom',
      name: 'chMainWash',
      desc: '',
      args: [],
    );
  }

  /// `Balcony`
  String get chBalcony {
    return Intl.message(
      'Balcony',
      name: 'chBalcony',
      desc: '',
      args: [],
    );
  }

  /// `Basement`
  String get chBasement {
    return Intl.message(
      'Basement',
      name: 'chBasement',
      desc: '',
      args: [],
    );
  }

  /// `Backyard`
  String get chBackyard {
    return Intl.message(
      'Backyard',
      name: 'chBackyard',
      desc: '',
      args: [],
    );
  }

  /// `Washroom`
  String get chWash {
    return Intl.message(
      'Washroom',
      name: 'chWash',
      desc: '',
      args: [],
    );
  }

  /// `Our first full custom home design and build`
  String get chFirst {
    return Intl.message(
      'Our first full custom home design and build',
      name: 'chFirst',
      desc: '',
      args: [],
    );
  }

  /// `Our second and most recent full custom home build and design`
  String get chSecond {
    return Intl.message(
      'Our second and most recent full custom home build and design',
      name: 'chSecond',
      desc: '',
      args: [],
    );
  }

  /// `Kitchens`
  String get rnKitchens {
    return Intl.message(
      'Kitchens',
      name: 'rnKitchens',
      desc: '',
      args: [],
    );
  }

  /// `Washrooms`
  String get rnWashrooms {
    return Intl.message(
      'Washrooms',
      name: 'rnWashrooms',
      desc: '',
      args: [],
    );
  }

  /// `Living Rooms`
  String get rnLivingRooms {
    return Intl.message(
      'Living Rooms',
      name: 'rnLivingRooms',
      desc: '',
      args: [],
    );
  }

  /// `Basements`
  String get rnBasements {
    return Intl.message(
      'Basements',
      name: 'rnBasements',
      desc: '',
      args: [],
    );
  }

  /// `CLOSET`
  String get esCLOSET {
    return Intl.message(
      'CLOSET',
      name: 'esCLOSET',
      desc: '',
      args: [],
    );
  }

  /// `Select Closet Material`
  String get esSCM {
    return Intl.message(
      'Select Closet Material',
      name: 'esSCM',
      desc: '',
      args: [],
    );
  }

  /// `MUDROOM`
  String get esMUDROOM {
    return Intl.message(
      'MUDROOM',
      name: 'esMUDROOM',
      desc: '',
      args: [],
    );
  }

  /// `STAIRCASE`
  String get esSTAIRCASE {
    return Intl.message(
      'STAIRCASE',
      name: 'esSTAIRCASE',
      desc: '',
      args: [],
    );
  }

  /// `Select Staircase Material`
  String get esSSM {
    return Intl.message(
      'Select Staircase Material',
      name: 'esSSM',
      desc: '',
      args: [],
    );
  }

  /// `FLOORS`
  String get esFLOORS {
    return Intl.message(
      'FLOORS',
      name: 'esFLOORS',
      desc: '',
      args: [],
    );
  }

  /// `Select Floor Material`
  String get esSFM {
    return Intl.message(
      'Select Floor Material',
      name: 'esSFM',
      desc: '',
      args: [],
    );
  }

  /// `KITCHEN COUNTERTOPS`
  String get esKC1 {
    return Intl.message(
      'KITCHEN COUNTERTOPS',
      name: 'esKC1',
      desc: '',
      args: [],
    );
  }

  /// `Select Kitchen Countertops`
  String get esSKC1 {
    return Intl.message(
      'Select Kitchen Countertops',
      name: 'esSKC1',
      desc: '',
      args: [],
    );
  }

  /// `KITCHEN CABINETS`
  String get esKC2 {
    return Intl.message(
      'KITCHEN CABINETS',
      name: 'esKC2',
      desc: '',
      args: [],
    );
  }

  /// `Select Kitchen Cabintes`
  String get esSKC2 {
    return Intl.message(
      'Select Kitchen Cabintes',
      name: 'esSKC2',
      desc: '',
      args: [],
    );
  }

  /// `STRUCTURAL FIXES`
  String get esSF {
    return Intl.message(
      'STRUCTURAL FIXES',
      name: 'esSF',
      desc: '',
      args: [],
    );
  }

  /// `POOL AREA`
  String get esPA {
    return Intl.message(
      'POOL AREA',
      name: 'esPA',
      desc: '',
      args: [],
    );
  }

  /// `BACKYARD`
  String get esBACKYARD {
    return Intl.message(
      'BACKYARD',
      name: 'esBACKYARD',
      desc: '',
      args: [],
    );
  }

  /// `Select Backyard Privacy Fencing`
  String get esSBPF {
    return Intl.message(
      'Select Backyard Privacy Fencing',
      name: 'esSBPF',
      desc: '',
      args: [],
    );
  }

  /// `DECKING`
  String get esDECKING {
    return Intl.message(
      'DECKING',
      name: 'esDECKING',
      desc: '',
      args: [],
    );
  }

  /// `Select Decking`
  String get esSD {
    return Intl.message(
      'Select Decking',
      name: 'esSD',
      desc: '',
      args: [],
    );
  }

  /// `BASEMENT`
  String get esBASEMENT {
    return Intl.message(
      'BASEMENT',
      name: 'esBASEMENT',
      desc: '',
      args: [],
    );
  }

  /// `CONTACT INFORMATION`
  String get esCI {
    return Intl.message(
      'CONTACT INFORMATION',
      name: 'esCI',
      desc: '',
      args: [],
    );
  }

  /// `NAME`
  String get esNAME {
    return Intl.message(
      'NAME',
      name: 'esNAME',
      desc: '',
      args: [],
    );
  }

  /// `EMAIL`
  String get esEAMIL {
    return Intl.message(
      'EMAIL',
      name: 'esEAMIL',
      desc: '',
      args: [],
    );
  }

  /// `PHONE`
  String get esPHONE {
    return Intl.message(
      'PHONE',
      name: 'esPHONE',
      desc: '',
      args: [],
    );
  }

  /// `SUBMIT`
  String get esSUBMIT {
    return Intl.message(
      'SUBMIT',
      name: 'esSUBMIT',
      desc: '',
      args: [],
    );
  }

  /// `Information not valid. Try again.`
  String get lgINVTA {
    return Intl.message(
      'Information not valid. Try again.',
      name: 'lgINVTA',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get lgName {
    return Intl.message(
      'Name',
      name: 'lgName',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get lgPassword {
    return Intl.message(
      'Password',
      name: 'lgPassword',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get lgLOGIN {
    return Intl.message(
      'LOGIN',
      name: 'lgLOGIN',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an Account?`
  String get lgDHAA {
    return Intl.message(
      'Don\'t have an Account?',
      name: 'lgDHAA',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get lgSU {
    return Intl.message(
      'Sign Up',
      name: 'lgSU',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get lgSI {
    return Intl.message(
      'Sign In',
      name: 'lgSI',
      desc: '',
      args: [],
    );
  }

  /// ` Our Service `
  String get seOS {
    return Intl.message(
      ' Our Service ',
      name: 'seOS',
      desc: '',
      args: [],
    );
  }

  /// `Complet Remodeling`
  String get seCR1 {
    return Intl.message(
      'Complet Remodeling',
      name: 'seCR1',
      desc: '',
      args: [],
    );
  }

  /// `We thrive on excellence and quality. Our work is a testimony in itself.  We can do anything from small renovation to a complete remodel for our clients. No job is too small nor too big`
  String get seCR2 {
    return Intl.message(
      'We thrive on excellence and quality. Our work is a testimony in itself.  We can do anything from small renovation to a complete remodel for our clients. No job is too small nor too big',
      name: 'seCR2',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen Remodeling`
  String get seKR1 {
    return Intl.message(
      'Kitchen Remodeling',
      name: 'seKR1',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen is the heart of  a home. Hence holds a special place in our renovating projects. We make dreams come true with our expertise in designing and executing`
  String get seKR2 {
    return Intl.message(
      'Kitchen is the heart of  a home. Hence holds a special place in our renovating projects. We make dreams come true with our expertise in designing and executing',
      name: 'seKR2',
      desc: '',
      args: [],
    );
  }

  /// `Flooring`
  String get seF1 {
    return Intl.message(
      'Flooring',
      name: 'seF1',
      desc: '',
      args: [],
    );
  }

  /// `We do it all from tiling to hardwood. Heated flooring, Vinyl, carpet, And we will pick sturdy materials that will last.`
  String get seF2 {
    return Intl.message(
      'We do it all from tiling to hardwood. Heated flooring, Vinyl, carpet, And we will pick sturdy materials that will last.',
      name: 'seF2',
      desc: '',
      args: [],
    );
  }

  /// `Home Interior`
  String get seHI1 {
    return Intl.message(
      'Home Interior',
      name: 'seHI1',
      desc: '',
      args: [],
    );
  }

  /// `We specialize in medium to large home design projects. We will make your interior space functional and luxurious by selecting essential and decorative items such as colours, lighting, furniture etc.`
  String get seHI2 {
    return Intl.message(
      'We specialize in medium to large home design projects. We will make your interior space functional and luxurious by selecting essential and decorative items such as colours, lighting, furniture etc.',
      name: 'seHI2',
      desc: '',
      args: [],
    );
  }

  /// `Custom Homes`
  String get seCH1 {
    return Intl.message(
      'Custom Homes',
      name: 'seCH1',
      desc: '',
      args: [],
    );
  }

  /// `We love the process of making a vision come to life. Custom building is an art that we excel in. We will manage the entire project from design to occupancy`
  String get seCH2 {
    return Intl.message(
      'We love the process of making a vision come to life. Custom building is an art that we excel in. We will manage the entire project from design to occupancy',
      name: 'seCH2',
      desc: '',
      args: [],
    );
  }

  /// `Bathroom Remodeling`
  String get seBR1 {
    return Intl.message(
      'Bathroom Remodeling',
      name: 'seBR1',
      desc: '',
      args: [],
    );
  }

  /// `Everyone wants a washroom that is comfortable as well as stylish. We will provide both comfort and style in our washroom remodels by selecting the right kinds of materials and design elements.`
  String get seBR2 {
    return Intl.message(
      'Everyone wants a washroom that is comfortable as well as stylish. We will provide both comfort and style in our washroom remodels by selecting the right kinds of materials and design elements.',
      name: 'seBR2',
      desc: '',
      args: [],
    );
  }

  /// ` Our Expertise `
  String get seOE {
    return Intl.message(
      ' Our Expertise ',
      name: 'seOE',
      desc: '',
      args: [],
    );
  }

  /// `Pre-Construction`
  String get sePC1 {
    return Intl.message(
      'Pre-Construction',
      name: 'sePC1',
      desc: '',
      args: [],
    );
  }

  /// ` · Design-Build`
  String get sePC2 {
    return Intl.message(
      ' · Design-Build',
      name: 'sePC2',
      desc: '',
      args: [],
    );
  }

  /// ` · Scheduling`
  String get sePC3 {
    return Intl.message(
      ' · Scheduling',
      name: 'sePC3',
      desc: '',
      args: [],
    );
  }

  /// ` · Estimating & Budgeting`
  String get sePC4 {
    return Intl.message(
      ' · Estimating & Budgeting',
      name: 'sePC4',
      desc: '',
      args: [],
    );
  }

  /// `Construction`
  String get seC1 {
    return Intl.message(
      'Construction',
      name: 'seC1',
      desc: '',
      args: [],
    );
  }

  /// ` · Quality Control`
  String get seC2 {
    return Intl.message(
      ' · Quality Control',
      name: 'seC2',
      desc: '',
      args: [],
    );
  }

  /// ` · Safety Management`
  String get seC3 {
    return Intl.message(
      ' · Safety Management',
      name: 'seC3',
      desc: '',
      args: [],
    );
  }

  /// ` · Subcontractor Management`
  String get seC4 {
    return Intl.message(
      ' · Subcontractor Management',
      name: 'seC4',
      desc: '',
      args: [],
    );
  }

  /// ` · Time Management`
  String get seC5 {
    return Intl.message(
      ' · Time Management',
      name: 'seC5',
      desc: '',
      args: [],
    );
  }

  /// `Post-Construction`
  String get sePOC1 {
    return Intl.message(
      'Post-Construction',
      name: 'sePOC1',
      desc: '',
      args: [],
    );
  }

  /// ` · Certificate of Occupancy`
  String get sePOC2 {
    return Intl.message(
      ' · Certificate of Occupancy',
      name: 'sePOC2',
      desc: '',
      args: [],
    );
  }

  /// ` · As-built documentation`
  String get sePOC3 {
    return Intl.message(
      ' · As-built documentation',
      name: 'sePOC3',
      desc: '',
      args: [],
    );
  }

  /// ` · Warranty`
  String get sePOC4 {
    return Intl.message(
      ' · Warranty',
      name: 'sePOC4',
      desc: '',
      args: [],
    );
  }

  /// `Bench Plans`
  String get BenchPlans {
    return Intl.message(
      'Bench Plans',
      name: 'BenchPlans',
      desc: '',
      args: [],
    );
  }

  /// `Hooks`
  String get Hooks {
    return Intl.message(
      'Hooks',
      name: 'Hooks',
      desc: '',
      args: [],
    );
  }

  /// `Hall Trees`
  String get HallTrees {
    return Intl.message(
      'Hall Trees',
      name: 'HallTrees',
      desc: '',
      args: [],
    );
  }

  /// `Shoe Racks`
  String get ShoeRacks {
    return Intl.message(
      'Shoe Racks',
      name: 'ShoeRacks',
      desc: '',
      args: [],
    );
  }

  /// `Consoles`
  String get Consoles {
    return Intl.message(
      'Consoles',
      name: 'Consoles',
      desc: '',
      args: [],
    );
  }

  /// `Shelves`
  String get Shelves {
    return Intl.message(
      'Shelves',
      name: 'Shelves',
      desc: '',
      args: [],
    );
  }

  /// `CoatHangers`
  String get CoatHangers {
    return Intl.message(
      'CoatHangers',
      name: 'CoatHangers',
      desc: '',
      args: [],
    );
  }

  /// `Foundational Cracks`
  String get FoundationalCracks {
    return Intl.message(
      'Foundational Cracks',
      name: 'FoundationalCracks',
      desc: '',
      args: [],
    );
  }

  /// `Roof`
  String get Roof {
    return Intl.message(
      'Roof',
      name: 'Roof',
      desc: '',
      args: [],
    );
  }

  /// `Windows and Doors`
  String get WindowsAndDoors {
    return Intl.message(
      'Windows and Doors',
      name: 'WindowsAndDoors',
      desc: '',
      args: [],
    );
  }

  /// `Electrical Fixes`
  String get ElectricalFixes {
    return Intl.message(
      'Electrical Fixes',
      name: 'ElectricalFixes',
      desc: '',
      args: [],
    );
  }

  /// `Plumbing`
  String get Plumbing {
    return Intl.message(
      'Plumbing',
      name: 'Plumbing',
      desc: '',
      args: [],
    );
  }

  /// `Heating`
  String get Heating {
    return Intl.message(
      'Heating',
      name: 'Heating',
      desc: '',
      args: [],
    );
  }

  /// `Air Conditioning`
  String get AirConditioning {
    return Intl.message(
      'Air Conditioning',
      name: 'AirConditioning',
      desc: '',
      args: [],
    );
  }

  /// `Insulation`
  String get Insulation {
    return Intl.message(
      'Insulation',
      name: 'Insulation',
      desc: '',
      args: [],
    );
  }

  /// `Load Bering Walls`
  String get LoadBeringWalls {
    return Intl.message(
      'Load Bering Walls',
      name: 'LoadBeringWalls',
      desc: '',
      args: [],
    );
  }

  /// `Air Ducts`
  String get AirDucts {
    return Intl.message(
      'Air Ducts',
      name: 'AirDucts',
      desc: '',
      args: [],
    );
  }

  /// `Wall Fixations`
  String get WallFixations {
    return Intl.message(
      'Wall Fixations',
      name: 'WallFixations',
      desc: '',
      args: [],
    );
  }

  /// `Basement Finishing`
  String get BasementFinishing {
    return Intl.message(
      'Basement Finishing',
      name: 'BasementFinishing',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get Other {
    return Intl.message(
      'Other',
      name: 'Other',
      desc: '',
      args: [],
    );
  }

  /// `Waterproof Material`
  String get WaterproofMaterial {
    return Intl.message(
      'Waterproof Material',
      name: 'WaterproofMaterial',
      desc: '',
      args: [],
    );
  }

  /// `Grid`
  String get Grid {
    return Intl.message(
      'Grid',
      name: 'Grid',
      desc: '',
      args: [],
    );
  }

  /// `Concrete`
  String get Concrete {
    return Intl.message(
      'Concrete',
      name: 'Concrete',
      desc: '',
      args: [],
    );
  }

  /// `Waterline Tiles`
  String get WaterlineTiles {
    return Intl.message(
      'Waterline Tiles',
      name: 'WaterlineTiles',
      desc: '',
      args: [],
    );
  }

  /// `Pool Plaster`
  String get PoolPlaster {
    return Intl.message(
      'Pool Plaster',
      name: 'PoolPlaster',
      desc: '',
      args: [],
    );
  }

  /// `Pool Heater`
  String get PoolHeater {
    return Intl.message(
      'Pool Heater',
      name: 'PoolHeater',
      desc: '',
      args: [],
    );
  }

  /// `Water Purifier`
  String get WaterPurifier {
    return Intl.message(
      'Water Purifier',
      name: 'WaterPurifier',
      desc: '',
      args: [],
    );
  }

  /// `Patio Set Instalation`
  String get PatioSetInstalation {
    return Intl.message(
      'Patio Set Instalation',
      name: 'PatioSetInstalation',
      desc: '',
      args: [],
    );
  }

  /// `Draft a floor plan`
  String get DraftAfloorPlan {
    return Intl.message(
      'Draft a floor plan',
      name: 'DraftAfloorPlan',
      desc: '',
      args: [],
    );
  }

  /// `Require Inspection`
  String get RequireInspection {
    return Intl.message(
      'Require Inspection',
      name: 'RequireInspection',
      desc: '',
      args: [],
    );
  }

  /// `Electrical Needs`
  String get ElectricalNeeds {
    return Intl.message(
      'Electrical Needs',
      name: 'ElectricalNeeds',
      desc: '',
      args: [],
    );
  }

  /// `Plumbing Needs`
  String get PlumbingNeeds {
    return Intl.message(
      'Plumbing Needs',
      name: 'PlumbingNeeds',
      desc: '',
      args: [],
    );
  }

  /// `Drywall`
  String get Drywall {
    return Intl.message(
      'Drywall',
      name: 'Drywall',
      desc: '',
      args: [],
    );
  }

  /// `Flooring`
  String get Flooring {
    return Intl.message(
      'Flooring',
      name: 'Flooring',
      desc: '',
      args: [],
    );
  }

  /// `Discuss your budget`
  String get DiscussYourBudget {
    return Intl.message(
      'Discuss your budget',
      name: 'DiscussYourBudget',
      desc: '',
      args: [],
    );
  }

  /// `Wood`
  String get Wood {
    return Intl.message(
      'Wood',
      name: 'Wood',
      desc: '',
      args: [],
    );
  }

  /// `Melamine`
  String get Melamine {
    return Intl.message(
      'Melamine',
      name: 'Melamine',
      desc: '',
      args: [],
    );
  }

  /// `MDF`
  String get MDF {
    return Intl.message(
      'MDF',
      name: 'MDF',
      desc: '',
      args: [],
    );
  }

  /// `Resin`
  String get Resin {
    return Intl.message(
      'Resin',
      name: 'Resin',
      desc: '',
      args: [],
    );
  }

  /// `Particle Board`
  String get ParticleBoard {
    return Intl.message(
      'Particle Board',
      name: 'ParticleBoard',
      desc: '',
      args: [],
    );
  }

  /// `Laminates`
  String get Laminates {
    return Intl.message(
      'Laminates',
      name: 'Laminates',
      desc: '',
      args: [],
    );
  }

  /// `Thermofoil`
  String get Thermofoil {
    return Intl.message(
      'Thermofoil',
      name: 'Thermofoil',
      desc: '',
      args: [],
    );
  }

  /// `Stone`
  String get Stone {
    return Intl.message(
      'Stone',
      name: 'Stone',
      desc: '',
      args: [],
    );
  }

  /// `Granite`
  String get Granite {
    return Intl.message(
      'Granite',
      name: 'Granite',
      desc: '',
      args: [],
    );
  }

  /// `Carpeted`
  String get Carpeted {
    return Intl.message(
      'Carpeted',
      name: 'Carpeted',
      desc: '',
      args: [],
    );
  }

  /// `Glass`
  String get Glass {
    return Intl.message(
      'Glass',
      name: 'Glass',
      desc: '',
      args: [],
    );
  }

  /// `Metal`
  String get Metal {
    return Intl.message(
      'Metal',
      name: 'Metal',
      desc: '',
      args: [],
    );
  }

  /// `Custom Railings`
  String get CustomRailings {
    return Intl.message(
      'Custom Railings',
      name: 'CustomRailings',
      desc: '',
      args: [],
    );
  }

  /// `Alternatives`
  String get Alternatives {
    return Intl.message(
      'Alternatives',
      name: 'Alternatives',
      desc: '',
      args: [],
    );
  }

  /// `Carpet`
  String get Carpet {
    return Intl.message(
      'Carpet',
      name: 'Carpet',
      desc: '',
      args: [],
    );
  }

  /// `Stone Tile`
  String get StoneTile {
    return Intl.message(
      'Stone Tile',
      name: 'StoneTile',
      desc: '',
      args: [],
    );
  }

  /// `Ceramic`
  String get Ceramic {
    return Intl.message(
      'Ceramic',
      name: 'Ceramic',
      desc: '',
      args: [],
    );
  }

  /// `Vinyl`
  String get Vinyl {
    return Intl.message(
      'Vinyl',
      name: 'Vinyl',
      desc: '',
      args: [],
    );
  }

  /// `Laminate`
  String get Laminate {
    return Intl.message(
      'Laminate',
      name: 'Laminate',
      desc: '',
      args: [],
    );
  }

  /// `Hardwood`
  String get Hardwood {
    return Intl.message(
      'Hardwood',
      name: 'Hardwood',
      desc: '',
      args: [],
    );
  }

  /// `Engineered Stone`
  String get EngineeredStone {
    return Intl.message(
      'Engineered Stone',
      name: 'EngineeredStone',
      desc: '',
      args: [],
    );
  }

  /// `Slate`
  String get Slate {
    return Intl.message(
      'Slate',
      name: 'Slate',
      desc: '',
      args: [],
    );
  }

  /// `Soapstone`
  String get Soapstone {
    return Intl.message(
      'Soapstone',
      name: 'Soapstone',
      desc: '',
      args: [],
    );
  }

  /// `Travertine`
  String get Travertine {
    return Intl.message(
      'Travertine',
      name: 'Travertine',
      desc: '',
      args: [],
    );
  }

  /// `Eco-friendly Material`
  String get friendlyMaterial {
    return Intl.message(
      'Eco-friendly Material',
      name: 'friendlyMaterial',
      desc: '',
      args: [],
    );
  }

  /// `Stainless Steel`
  String get StainlessSteel {
    return Intl.message(
      'Stainless Steel',
      name: 'StainlessSteel',
      desc: '',
      args: [],
    );
  }

  /// `Barbed Wire`
  String get BarbedWire {
    return Intl.message(
      'Barbed Wire',
      name: 'BarbedWire',
      desc: '',
      args: [],
    );
  }

  /// `Chain Links`
  String get ChainLinks {
    return Intl.message(
      'Chain Links',
      name: 'ChainLinks',
      desc: '',
      args: [],
    );
  }

  /// `Masonry`
  String get Masonry {
    return Intl.message(
      'Masonry',
      name: 'Masonry',
      desc: '',
      args: [],
    );
  }

  /// `Treated Wood`
  String get TreatedWood {
    return Intl.message(
      'Treated Wood',
      name: 'TreatedWood',
      desc: '',
      args: [],
    );
  }

  /// `Redwood and Teak`
  String get RedwoodAndTeak {
    return Intl.message(
      'Redwood and Teak',
      name: 'RedwoodAndTeak',
      desc: '',
      args: [],
    );
  }

  /// `Composite`
  String get Composite {
    return Intl.message(
      'Composite',
      name: 'Composite',
      desc: '',
      args: [],
    );
  }

  /// `Cedar`
  String get Cedar {
    return Intl.message(
      'Cedar',
      name: 'Cedar',
      desc: '',
      args: [],
    );
  }

  /// `Tropical Hardwood`
  String get TropicalHardwood {
    return Intl.message(
      'Tropical Hardwood',
      name: 'TropicalHardwood',
      desc: '',
      args: [],
    );
  }

  /// `Aluminium`
  String get Aluminium {
    return Intl.message(
      'Aluminium',
      name: 'Aluminium',
      desc: '',
      args: [],
    );
  }

  /// `PVC`
  String get PVC {
    return Intl.message(
      'PVC',
      name: 'PVC',
      desc: '',
      args: [],
    );
  }

  /// `Composites`
  String get Composites {
    return Intl.message(
      'Composites',
      name: 'Composites',
      desc: '',
      args: [],
    );
  }

  /// `Pressure Treated Lumber`
  String get PressureTreatedLumber {
    return Intl.message(
      'Pressure Treated Lumber',
      name: 'PressureTreatedLumber',
      desc: '',
      args: [],
    );
  }

  /// `Redwood and Cedar`
  String get RedwoodAndCedar {
    return Intl.message(
      'Redwood and Cedar',
      name: 'RedwoodAndCedar',
      desc: '',
      args: [],
    );
  }

  /// `Hello, my name is`
  String get chatName {
    return Intl.message(
      'Hello, my name is',
      name: 'chatName',
      desc: '',
      args: [],
    );
  }

  /// `and my phone number is`
  String get chatPhone {
    return Intl.message(
      'and my phone number is',
      name: 'chatPhone',
      desc: '',
      args: [],
    );
  }

  /// `and I want to inquiry about: `
  String get chatQuery {
    return Intl.message(
      'and I want to inquiry about: ',
      name: 'chatQuery',
      desc: '',
      args: [],
    );
  }

  /// `SEND A MESSAGE`
  String get chatSend {
    return Intl.message(
      'SEND A MESSAGE',
      name: 'chatSend',
      desc: '',
      args: [],
    );
  }

  /// `CHAT`
  String get CHAT {
    return Intl.message(
      'CHAT',
      name: 'CHAT',
      desc: '',
      args: [],
    );
  }

  /// `Closet features:`
  String get es1 {
    return Intl.message(
      'Closet features:',
      name: 'es1',
      desc: '',
      args: [],
    );
  }

  /// `Mudroom features:`
  String get es2 {
    return Intl.message(
      'Mudroom features:',
      name: 'es2',
      desc: '',
      args: [],
    );
  }

  /// `Staircase features:`
  String get es3 {
    return Intl.message(
      'Staircase features:',
      name: 'es3',
      desc: '',
      args: [],
    );
  }

  /// `Floors features:`
  String get es4 {
    return Intl.message(
      'Floors features:',
      name: 'es4',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen countertops features:`
  String get es5 {
    return Intl.message(
      'Kitchen countertops features:',
      name: 'es5',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen cabinets features:`
  String get es6 {
    return Intl.message(
      'Kitchen cabinets features:',
      name: 'es6',
      desc: '',
      args: [],
    );
  }

  /// `Structural fixes features:`
  String get es7 {
    return Intl.message(
      'Structural fixes features:',
      name: 'es7',
      desc: '',
      args: [],
    );
  }

  /// `Backyard privacy fencing features:`
  String get es8 {
    return Intl.message(
      'Backyard privacy fencing features:',
      name: 'es8',
      desc: '',
      args: [],
    );
  }

  /// `Decking features:`
  String get es9 {
    return Intl.message(
      'Decking features:',
      name: 'es9',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen countertops features:`
  String get es10 {
    return Intl.message(
      'Kitchen countertops features:',
      name: 'es10',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen cabinets features:`
  String get es11 {
    return Intl.message(
      'Kitchen cabinets features:',
      name: 'es11',
      desc: '',
      args: [],
    );
  }

  /// `Client's name:`
  String get es12 {
    return Intl.message(
      'Client\'s name:',
      name: 'es12',
      desc: '',
      args: [],
    );
  }

  /// `Phone:`
  String get es13 {
    return Intl.message(
      'Phone:',
      name: 'es13',
      desc: '',
      args: [],
    );
  }

  /// `Email:`
  String get es14 {
    return Intl.message(
      'Email:',
      name: 'es14',
      desc: '',
      args: [],
    );
  }

  /// `QUOTE FOR:`
  String get es15 {
    return Intl.message(
      'QUOTE FOR:',
      name: 'es15',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr', countryCode: 'CA'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
