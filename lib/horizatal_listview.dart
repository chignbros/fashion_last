import 'package:flutter/material.dart';

class HorizotalList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      height:110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categories(
            imageLoction: "images/categories/c1.png",
            imageCaption: "Jewelry"
          ),
           Categories(
            imageLoction: "images/categories/c2.png",
            imageCaption: "Dress"
          ), Categories(
            imageLoction: "images/categories/c3.png",
            imageCaption: "Formal"
          ), Categories(
            imageLoction: "images/categories/c4.png",
            imageCaption: "Imformal"
          ), Categories(
            imageLoction: "images/categories/c5.png",
            imageCaption: "Trouser"
          ), Categories(
            imageLoction: "images/categories/c6.png",
            imageCaption: "Shoes"
          ),
           Categories(
            imageLoction: "images/categories/c7.png",
            imageCaption: "Shirt"
          ),

         
  
          
          
        ],
      ),
    );
    
  }
}



class Categories extends StatelessWidget {
 final String imageCaption;
 final String imageLoction;

  Categories({this.imageLoction, this.imageCaption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: InkWell(
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              imageLoction,
              width: 100,
              height: 80,
            ),
            subtitle: Text(imageCaption,textAlign:TextAlign.center,),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
