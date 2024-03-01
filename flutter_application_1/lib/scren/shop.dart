import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter_application_1/services/getproduct.dart';
import 'package:flutter_application_1/widjets/product.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     body: FutureBuilder(
      future: getproduct(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<product>? l = snapshot.data;
          print(snapshot.data);
          return ListView.builder(
            itemCount: l!.length,
            itemBuilder: (context, index) {
              return ProductWidget(product: l[index]);
            },
          ); // Remove this semicolon
        }
        return Center(child: CircularProgressIndicator());
        },)
    );
     
  }
}