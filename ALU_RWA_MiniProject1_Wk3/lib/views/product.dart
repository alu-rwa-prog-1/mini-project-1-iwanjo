// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// // ignore: must_be_immutable
// class ProductCard extends StatelessWidget {
//   var _flavour;
//   var _price;
//   var _image;

//   ProductCard(this._flavour, this._price, this._image);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       height: 180,
//       child: Stack(
//         children: <Widget>[
//           Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Container(
//               width: 110,
//               height: 130,
//               padding: EdgeInsets.symmetric(
//                 horizontal: 16,
//                 vertical: 16,
//               ),
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 primary: false,
//                 mainAxisSpacing: 5,
//                 crossAxisSpacing: 4,
//                 children: <Widget>[
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Text(_flavour),
//                   ),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: Text(_price),
//                   ),
//                   Positioned(
//                     right: 25,
//                     child: Container(
//                       height: 85,
//                       width: 85,
//                       child: Image.asset(_image),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  var _flavour;
  var _imageUrl;
  var _price;

  ProductCard(this._flavour, this._imageUrl, this._price);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 160,
      child: Stack(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 46,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  _flavour,
                  style: GoogleFonts.cabin(
                      textStyle: TextStyle(letterSpacing: .3, fontSize: 15)),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 40,
              width: 80,
              child: Text(
                _price,
                style: GoogleFonts.cabin(
                    textStyle: TextStyle(letterSpacing: .3, fontSize: 13)),
              ),
            ),
          ),
          Positioned(
            right: 45,
            child: Container(
              height: 85,
              width: 85,
              child: Image.asset(
                _imageUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
