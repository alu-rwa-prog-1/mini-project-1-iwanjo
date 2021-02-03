import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  Home({this.uid});
  final String uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFFEF9A9A),
        backgroundColor: Color(0xFF607D8B),
        title: Text(
          "DoughnutNation",
          style: GoogleFonts.cabin(
            textStyle:
                TextStyle(color: Colors.white, letterSpacing: .5, fontSize: 21),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF607D8B),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.shopping_cart),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                'Welcome to Doughnut Nation',
                style: GoogleFonts.cabin(
                    textStyle: TextStyle(letterSpacing: .5, fontSize: 22)),
              ),
            ),
          ],
        ),
      ),
      drawer: NavigateDrawer(
        uid: this.uid,
      ),
    );
  }
}

class NavigateDrawer extends StatefulWidget {
  final String uid;
  NavigateDrawer({Key key, this.uid}) : super(key: key);
  @override
  _NavigateDrawerState createState() => _NavigateDrawerState();
}

class _NavigateDrawerState extends State<NavigateDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Melo Cruz",
              style: GoogleFonts.cabin(),
            ),
            accountEmail: Text(
              "mcruz@gmail.com",
              style: GoogleFonts.cabin(),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF607D8B),
            ),
            currentAccountPicture: CircleAvatar(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/melo.jpeg'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            title: Text(
              'Home',
              style: GoogleFonts.cabin(
                  color: Colors.black,
                  letterSpacing: .5,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
