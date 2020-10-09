import 'package:Invoice/screens/invoice/components/invoice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Invoice',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.nunitoSansTextTheme()
                .apply(bodyColor: Colors.white)),
        home: Scaffold(
          backgroundColor: iPrimarryColor,
          body: Invoice(),
        ));
  }
}
