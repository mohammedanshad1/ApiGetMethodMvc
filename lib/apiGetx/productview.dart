import 'package:apigetxusingmvc/apiGetx/userview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'model.dart';


class Products extends StatelessWidget {
  final List<Product> products;

  Products({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
          },
            child: Icon(Icons.arrow_back)),
      ),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          var product = products[index];


          return Card(
            child: InkWell(
              onTap: () {

              },
              child: Center(
                child: ListTile(
                  title: Text(
                    product.productId.toString() ?? "",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(product.quantity.toString() ?? ""),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
