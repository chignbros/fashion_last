import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final prodDetailName;
  final prodDetailPic;
  final prodDetailPrice;
  final prodDetailOldPrice;
  final prodDetailCondition;
  final prodDetailBrand;

  ProductDetail(
      {this.prodDetailName,
      this.prodDetailOldPrice,
      this.prodDetailPic,
      this.prodDetailPrice,
      this.prodDetailBrand,
      this.prodDetailCondition});
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List<SimilarSinglepro> prodList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
         
          Padding(
            padding: EdgeInsets.only(right: 10),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.prodDetailPic,
                  fit: BoxFit.cover,
                ),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.prodDetailName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.prodDetailOldPrice}",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.prodDetailPrice}",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("choose size"),
                          actions: <Widget>[
                            MaterialButton(
                              child: Text("close"),
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                            )
                          ],
                        );
                      });
                },
                elevation: 2.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Size"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Color"),
                          content: Text("choose color"),
                          actions: <Widget>[
                            MaterialButton(
                              child: Text("close"),
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                            )
                          ],
                        );
                      });
                },
                elevation: 2.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Color"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Quantity"),
                          content: Text("choose quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              child: Text("close"),
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                            )
                          ],
                        );
                      });
                },
                elevation: 2.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Qty"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  textColor: Colors.white,
                  color: Colors.deepPurpleAccent,
                  elevation: 2.0,
                  child: Text("Buy now"),
                  onPressed: () {},
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.deepPurpleAccent,
                ),
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Detail"),
            subtitle: Text(
                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product name :",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.prodDetailName),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product brand :",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.prodDetailBrand),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product condition :",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.prodDetailCondition),
              )
            ],
          ),
          Container(
            height: 360.0,
            child: Similarpro(),
          )
        ],
      ),
    );
  }
}

class Similarpro extends StatefulWidget {
  @override
  _SimilarproState createState() => _SimilarproState();
}

class _SimilarproState extends State<Similarpro> {
  List<SimilarSinglepro> prodList = [];
  @override
  void initState() {
    super.initState();
    prodList.add(SimilarSinglepro(
      prodname: "Shoes",
      prodpic: "images/products/shoe1.jpg",
      prodoldPrice: "13",
      prodprice: "10",
      prodBrand: "Luvius",
      prodCondition: "New",
    ));
    prodList.add(SimilarSinglepro(
      prodname: "Skirt",
      prodpic: "images/products/skt2.jpeg",
      prodoldPrice: "19",
      prodprice: "14",
      prodBrand: "Pedro",
      prodCondition: "Comming soon",
    ));
    prodList.add(SimilarSinglepro(
      prodname: "Dress",
      prodpic: "images/products/dress2.jpeg",
      prodoldPrice: "13",
      prodprice: "10",
      prodBrand: "Pedro",
      prodCondition: "New",
    ));
    prodList.add(SimilarSinglepro(
      prodname: "Skirt1",
      prodpic: "images/products/skt1.jpeg",
      prodoldPrice: "19",
      prodprice: "14",
      prodBrand: "Panadi",
      prodCondition: "New",
    ));
    prodList.add(SimilarSinglepro(
      prodname: "Hill1",
      prodpic: "images/products/hills1.jpeg",
      prodoldPrice: "13",
      prodprice: "10",
      prodBrand: "Berlery",
      prodCondition: "New",
    ));
    prodList.add(SimilarSinglepro(
      prodname: "Pant",
      prodpic: "images/products/pants1.jpg",
      prodoldPrice: "19",
      prodprice: "14",
      prodBrand: "Luvius",
      prodCondition: "New",
    ));
    prodList.add(SimilarSinglepro(
      prodname: "Hills2",
      prodpic: "images/products/hills2.jpeg",
      prodoldPrice: "13",
      prodprice: "10",
      prodBrand: "Aramani",
      prodCondition: "New",
    ));
    prodList.add(SimilarSinglepro(
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
        return SimilarSinglepro(
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

class SimilarSinglepro extends StatelessWidget {
  final prodname;
  final prodpic;
  final prodprice;
  final prodoldPrice;
  final prodCondition;
  final prodBrand;
  SimilarSinglepro(
      {this.prodname,
      this.prodoldPrice,
      this.prodpic,
      this.prodprice,
      this.prodBrand,
      this.prodCondition});

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
