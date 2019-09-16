import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'horizatal_listview.dart';
import 'products.dart';
import 'cart.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.deepPurpleAccent),
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text("Fashion"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()))),
          Padding(
            padding: EdgeInsets.only(right: 10),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Bros Chign"),
              accountEmail: Text("brosching@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightBlue,
              ),
              decoration: BoxDecoration(color: Colors.deepPurpleAccent),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text("Home"),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text("My Account"),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text("My Order"),
              ),
              onTap: () {},
            ),
            InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text("Shopping Cart"),
                ),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()))),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text("Favorite"),
              ),
              onTap: () {},
            ),
            Divider(),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text("Setting"),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
                title: Text("Help"),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return ListView(
      children: <Widget>[
        imageCarousel,
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Categories",
            style: TextStyle(fontSize: 18),
          ),
        ),
        HorizotalList(),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Recent Products",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          height: 320,
          child: Products(),
        )
      ],
    );
  }

  Widget imageCarousel = new Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("images/w1.jpeg"),
        AssetImage("images/w2.jpeg"),
        AssetImage("images/w3.jpeg"),
        AssetImage("images/w4.jpeg"),
      ],
      autoplay: true,
      dotSize: 5.0,
      indicatorBgPadding: 6.0,
      dotColor: Colors.redAccent,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      // dotBgColor: Colors.redAccent,
      // borderRadius: true
      // dotIncreasedColor: Colors.redAccent,
    ),
  );
}
