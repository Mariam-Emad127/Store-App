import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
    CustomCard({super.key,required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
            context,
            UpdateProductPage.id,arguments: product
        );
      },
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          // height: 130,
          //
          // width: 220,

          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 40,
                spreadRadius: 0,
                offset: Offset(10, 10))
          ]),

          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 10,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0,6),
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       // product.price
                        Text(r'$'"${product.price.toString()}"),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
        Positioned(
          right: 20,
          top: -60,
          child: Image.network(
              product.image),
          height: 100,
          width: 100,
        )
      ]),
    );
  }
}
