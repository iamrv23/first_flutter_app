import 'package:first_flutter_app/models/product_model.dart';
import 'package:flutter/material.dart';

class ViewDetails extends StatelessWidget {
  ViewDetails({Key? key, required this.productDetails}) : super(key: key);
  ProductDetails productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('back'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          )),
      body: Center(
        child: Container(
          child: ListView(
            padding: EdgeInsets.all(5.0),
            children: [
              ListTile(
                  onTap: () {},
                  shape: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.black)),
                  leading: Icon(Icons.shopping_bag_outlined),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      productDetails.isTopProduct
                          ? (const Chip(
                              label: Text("Top Prodcut"),
                              backgroundColor: Colors.deepPurple,
                              labelStyle: TextStyle(color: Colors.white),
                            ))
                          : Text(""),
                      Text(
                        productDetails.productName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      Text(
                        productDetails.productDetails,
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16.0),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  productDetails.productType.name.toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                productDetails.productSize.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
