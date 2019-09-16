import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CardProductsState createState() => _CardProductsState();
}

class _CardProductsState extends State<CartProducts> {
  List<CardProduct> prodList = [];
  @override
  void initState() {
    super.initState();
    prodList.add(CardProduct(
      prodCartSize: "L",
      prodCartPic: "images/products/shoe1.jpg",
      prodCartPrice: "10",
      prodCartBrand: "Luvius",
      prodCartColor: "red",
      prodCartName: "Shoe",
      prodCartQty: "2",
    ));
    prodList.add(CardProduct(
      prodCartSize: "M",
      prodCartPic: "images/products/blazer1.jpeg",
      prodCartPrice: "10",
      prodCartBrand: "blazer",
      prodCartColor: "red",
      prodCartName: "blazer",
      prodCartQty: "2",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: prodList.length,
      itemBuilder: (context, int index) {
        return CardProduct(
          prodCartBrand: prodList[index].prodCartBrand,
          prodCartPrice: prodList[index].prodCartPrice,
          prodCartPic: prodList[index].prodCartPic,
          prodCartQty: prodList[index].prodCartQty,
          prodCartName: prodList[index].prodCartName,
          prodCartColor: prodList[index].prodCartColor,
          prodCartSize: prodList[index].prodCartSize,
        );
      },
    );
  }
}

class CardProduct extends StatelessWidget {
  final prodCartName;
  final prodCartPic;
  final prodCartSize;
  final prodCartColor;
  final prodCartBrand;
  final prodCartPrice;
  final prodCartQty;

  CardProduct(
      {this.prodCartBrand,
      this.prodCartColor,
      this.prodCartName,
      this.prodCartPic,
      this.prodCartPrice,
      this.prodCartQty,
      this.prodCartSize});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 50.0,
          child: Image.asset(
            "$prodCartPic",
            fit: BoxFit.cover,
          ),
        ),
        title: Text("$prodCartName"),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Size:",
                    style: TextStyle(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    prodCartSize,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Color:",
                    style: TextStyle(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    prodCartColor,
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[Text("\$$prodCartPrice")]),
            )
          ],
        ),
      ),
    );
  }
}
