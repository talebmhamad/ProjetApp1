import 'dart:convert';

import 'package:flutter_application_1/model/article.dart';
import 'package:http/http.dart' as http ;



Future<List<Article>> getNew() async {
  List<Article> articles = [];
  try {
    var res = await http.get(Uri.parse("https://newsapi.org/v2/everything?q=car&from=2024-02-25&sortBy=publishedAt&apiKey=ff394dcf9cad483da10bc681ed7a9261"));

    if (res.statusCode == 200) {
      print(res.body);
      final jsonData = json.decode(res.body);
      var list = jsonData["articles"];
      list.forEach((articleData) {
       
        Article a = Article.fromJson(articleData);
        articles.add(a);
      });
    }
    
     return articles;
  } catch (e) {}
  return articles;
}