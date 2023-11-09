import 'dart:convert';

import '../models/product_model.dart';
import 'package:http/http.dart'as http;

class CategoriesService {

  Future<List<ProductModel>> getAllProduct({required String categoryName})async{
    http.Response respond =await http.get(Uri.parse("https://fakestoreapi.com/products/category/$categoryName"));

    List <dynamic>data=jsonDecode(respond.body);

    List <ProductModel>productList=[];
    for (int i=0 ;i<data.length;i++){
      productList.add(ProductModel.fromJson(data[i]) );


    }
    return productList;


  }

}