
import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

class ProductDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ProductList(
        products: List.generate(20, (index) => Product('商品$index', '这是商品$index的商品详情')));
  }
}


class ProductList extends StatelessWidget{
  final List<Product> products;

  ProductList({Key key, @required this.products}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        physics: ScrollPhysics(),
        itemCount: products.length,
          itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].title),
            leading: Icon(Icons.near_me),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetail(product: products[index]))
              );
            },
          );
          }
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({Key key, @required this.product}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Center(
        child: Text(product.description, style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),),
      ),
    );
  }
}