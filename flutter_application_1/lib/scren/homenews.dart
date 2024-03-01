import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/article.dart';
import 'package:flutter_application_1/widjets/cart.dart';
import 'package:flutter_application_1/services/get-news.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _menuState();
}
  
class _menuState extends State<homepage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     body: FutureBuilder(
      future: getNew(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Article>? l = snapshot.data;
          print(snapshot.data);
          return ListView.builder(
            itemCount: l!.length,
            itemBuilder: (context, index) {
              return CardWidget(news: l[index]);
            },
          ); // Remove this semicolon
        }
        return Center(child: CircularProgressIndicator());
        },)
    );
     
  }
}