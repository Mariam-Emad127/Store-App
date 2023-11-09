import 'dart:convert';

import 'package:http/http.dart' as http;

import '../helper/api.dart';
//import 'package:store/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCateogires() async {
    List <dynamic>data=await Api().get(url:'https://fakestoreapi.com/products/categories');
   //http.Response response=await

//     http.get (Uri.parse('https://fakestoreapi.com/products/categories'));
// List <dynamic>data=jsonDecode(response.body);
    return data;

  }
}