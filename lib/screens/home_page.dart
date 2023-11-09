import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product_service.dart';
import 'package:store_app/widget/custom_card.dart';

class HomePage extends StatelessWidget {
  static String id = "homepage";

  HomePage({super.key,
  // required this.product
  });
  //ProductModel product;
  @override
  Widget build(BuildContext context) {
//    var product=ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'New Trend',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body:
        // GestureDetector(
        //
        //   child:
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
              child: FutureBuilder<List<ProductModel>>(
                future: AllProductServices().getAllProduct(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> products = snapshot.data!;
                    return GridView.builder(
                        clipBehavior: Clip.none,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1.5,
                            mainAxisSpacing: 100),
                        itemBuilder: (context, index) {
                          return CustomCard(
                            product: products[index],
                          );
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              )),
        //)
    );
  }
}
