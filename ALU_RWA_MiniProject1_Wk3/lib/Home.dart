import 'package:ALU_RWA_MiniProject1_Wk3/views/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ALU_RWA_MiniProject1_Wk3/variables.dart';

class Home extends StatelessWidget {
  Home({this.uid});
  final String uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kRedColor,
        centerTitle: true,
        title: Text(
          "DoughnutNation",
          style: GoogleFonts.cabin(
            textStyle: TextStyle(
              color: Colors.white,
              letterSpacing: .5,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kRedColor,
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
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Text(
                    'Welcome to DoughnutNation',
                    style: GoogleFonts.cabin(
                        textStyle: TextStyle(
                      letterSpacing: .5,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.cabin(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .5),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: TextButton.icon(
                      label: Text("All Categories"),
                      icon: Icon(Icons.category),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Text(
                    "Today's Deals",
                    style: GoogleFonts.cabin(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: NavigateDrawer(
        uid: this.uid,
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Plain',
            'assets/plain.jpg',
            kOrangeColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Caramel',
            'assets/caramel.jpg',
            kBlueGreyColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard('Coconut', 'assets/coconut.jpg', kBlueColor),
          SizedBox(
            width: 10,
          ),
          CategoryCard('Red Velvet', 'assets/red-velvet.jpg', kRedColor),
          SizedBox(
            width: 10,
          ),
          CategoryCard('Sprinkles', 'assets/sprinkles.jpg', kPinkColor),
        ],
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
              color: kRedColor,
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
              style: GoogleFonts.cabin(color: Colors.black, letterSpacing: .5),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            title: Text(
              'Search',
              style: GoogleFonts.cabin(color: Colors.black, letterSpacing: .5),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(
                Icons.category,
                color: Colors.black,
              ),
            ),
            title: Text(
              'Categories',
              style: GoogleFonts.cabin(color: Colors.black, letterSpacing: .5),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(
                Icons.track_changes,
                color: Colors.black,
              ),
            ),
            title: Text(
              'Track Your Order',
              style: GoogleFonts.cabin(color: Colors.black, letterSpacing: .5),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.cabin(color: Colors.black, letterSpacing: .5),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(
                Icons.logout,
                color: Colors.black,
              ),
            ),
            title: Text(
              'Log Out',
              style: GoogleFonts.cabin(color: Colors.black, letterSpacing: .5),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
