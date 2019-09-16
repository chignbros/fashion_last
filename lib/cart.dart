import 'package:flutter/material.dart';
import 'cartProduct.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 0.1,
      title: Text("Cart"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
        ),
      ],
    )
    ,bottomNavigationBar: Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              title: Text("Total:"),
              subtitle: Text("\$ 24",style: TextStyle(color: Colors.red),),
            ),
          ),
          Expanded(
            child: MaterialButton(
              child: Text('Check out'),
              onPressed: (){},
              color: Colors.deepPurpleAccent,
              textColor: Colors.white,
            ),
          )
        ],
      ),
    ),
    body: CartProducts(
      
    ),
    );

  }
}
