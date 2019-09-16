import 'package:flutter/material.dart';
import 'product_detail.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<Singlepro> prodList = [];
  @override
  void initState() {
    
    super.initState();
    prodList.add(Singlepro(
      prodname: "Shoes",
      prodpic: "images/products/shoe1.jpg",
      prodoldPrice: "13",
      prodprice: "10",
      prodBrand: "Luvius",
      prodCondition: "New",
    ));
    prodList.add(Singlepro(
      prodname: "Skirt",
      prodpic: "images/products/skt2.jpeg",
      prodoldPrice: "19",
      prodprice: "14",
       prodBrand: "Pedro",
      prodCondition: "Comming soon",
    ));
    prodList.add(Singlepro(
      prodname: "Dress",
      prodpic: "images/products/dress2.jpeg",
      prodoldPrice: "13",
      prodprice: "10",
       prodBrand: "Pedro",
      prodCondition: "New",
    ));
    prodList.add(Singlepro(
      prodname: "Skirt1",
      prodpic: "images/products/skt1.jpeg",
      prodoldPrice: "19",
      prodprice: "14",
       prodBrand: "Panadi",
      prodCondition: "New",
    ));
    prodList.add(Singlepro(
      prodname: "Hill1",
      prodpic: "images/products/hills1.jpeg",
      prodoldPrice: "13",
      prodprice: "10",
       prodBrand: "Berlery",
      prodCondition: "New",
    ));
    prodList.add(Singlepro(
      prodname: "Pant",
      prodpic: "images/products/pants1.jpg",
      prodoldPrice: "19",
      prodprice: "14",
       prodBrand: "Luvius",
      prodCondition: "New",
    ));
    prodList.add(Singlepro(
      prodname: "Hills2",
      prodpic: "images/products/hills2.jpeg",
      prodoldPrice: "13",
      prodprice: "10",
       prodBrand: "Aramani",
      prodCondition: "New",
    ));
    prodList.add(Singlepro(
      prodname: "Skirt2",
      prodpic: "images/products/pants2.jpeg",
      prodoldPrice: "19",
      prodprice: "14",
       prodBrand: "Luvius",
      prodCondition: "Comming soon",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: prodList.length,
      itemBuilder: (BuildContext context, int index) {
        return Singlepro(
          prodname: prodList[index].prodname,
          prodpic: prodList[index].prodpic,
          prodoldPrice: prodList[index].prodoldPrice,
          prodprice: prodList[index].prodprice,
          prodBrand: prodList[index].prodBrand,
          prodCondition: prodList[index].prodCondition,
        );
      },
    );
  }
}

class Singlepro extends StatelessWidget {
  final prodname;
  final prodpic;
  final prodprice;
  final prodoldPrice;
  final prodCondition;
  final prodBrand;
  Singlepro({
    this.prodname,
    this.prodoldPrice,
    this.prodpic,
    this.prodprice,
    this.prodBrand,
    this.prodCondition
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prodname,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetail(
                      prodDetailName: prodname,
                      prodDetailOldPrice: prodoldPrice,
                      prodDetailPic: prodpic,
                      prodDetailPrice: prodprice,
                      prodDetailBrand: prodBrand,
                      prodDetailCondition: prodCondition,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prodname,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$$prodprice",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.red),
                  ),
                  subtitle: Text(
                    "\$$prodoldPrice",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black54,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                prodpic,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
