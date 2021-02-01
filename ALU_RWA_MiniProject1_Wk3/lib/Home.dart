import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "DoughnutNation",
          style: GoogleFonts.cabin(
            textStyle:
                TextStyle(color: Colors.white, letterSpacing: .5, fontSize: 24),
          ),
        )),
      ),
    );
  }
}
