import 'dart:convert';

import 'package:flutter_application_1/model/product.dart';
import 'package:http/http.dart' as http ;



Future<List<product>> getproduct() async {
  List<product> products = [];
  try {
    var result = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    print(result.statusCode);
    if (result.statusCode == 200) {
      
      final jsonData = json.decode(result.body);
       var list = jsonData as List;
      list.forEach((productdata) {
        
        product a = product.fromJsonProduct(productdata);
        print(a);
        products.add(a);
      });
    }
    
     
  } catch (e) {}
  return products;
}