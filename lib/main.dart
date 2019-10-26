import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  final slideBlockWidget = Container(
    height: 200,
    width: 300,
    color: Colors.grey,
  );

  final bookWidget = Container(
    width: 160,
    decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.white),
    child: Center(
      child: Text('សៀវភៅ'),
    ),
  );

  final homeAndKitchenWidget = Container(
    width: 160,
    decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.white),
    child: Center(
      child: Text('សម្ភារៈផ្ទះបាយ'),
    ),
  );

  final categoriesBlockWidget = Container(
    height: 60,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[bookWidget, homeAndKitchenWidget],
    ),
  );

  //New Prodocts
  final newProductsTitle = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('New Products')
    ],
  );
    final rigtArrowIcon = Icon(Icons.arrow_right);
    final rigtTextALL = Text('All');
    final newProdoctRightArrowWidget = Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      rigtTextALL,
      rigtArrowIcon
      

    ],
  );
  final newProductsCategoriesBlockWidget = Row(
    children: <Widget>[
      newProductsTitle,
      Spacer(),
      newProdoctRightArrowWidget

    ],
  );
  final newProductsItemContainer = Container(
    height: 100,
    
    decoration: BoxDecoration(
      border: Border.all( color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.white,
    
    ),
  );

  //Secondhand Products
  final secondHandProductTitle = Text('Second Hand Products');
  final secondHandProdoctRightArrowWidget = Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      rigtTextALL,
      rigtArrowIcon
      
    ],

  );
 
  final secondhandProductBlockWidget = Row(
    children: <Widget>[
      secondHandProductTitle,
      Spacer(),
      secondHandProdoctRightArrowWidget
     
    ],
    
  );
  final secondHandProductItemContainer = Container(
     height: 100,
    
    decoration: BoxDecoration(
      border: Border.all( color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.white,
    
    ),
  );

  final bodyWidget = Column(
    children: <Widget>[
      slideBlockWidget, 
      categoriesBlockWidget,
      newProductsCategoriesBlockWidget,
      newProductsItemContainer,
      secondhandProductBlockWidget,
      secondHandProductItemContainer,

    ],
  );

  final homeScreenWidget = Scaffold(
    body: bodyWidget,
    backgroundColor: Color(0xFFEFEFF4),
  );

  final rootWidget = MaterialApp(
    home: homeScreenWidget,
  );

  runApp(rootWidget);
}
