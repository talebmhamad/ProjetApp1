import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Article {
  String author;
 String title;
 String description;
 String url;
 String urltoimage;
 String publishat;
 String content;
 Article({required this.author,required this.title, required this.description,required this.url,required this.urltoimage,required this.publishat,required this.content});
   
   
   factory Article.fromJson(Map<String,dynamic>json){
 return Article(author: json["author"] ??"",
  title: json["title"] ?? "",
   description: json["description"] ?? "" ,
    url: json["url"] ?? "",
     urltoimage: json["urlToImage"] ?? "https://img.freepik.com/free-photo/3d-rendering-illustration-letter-blocks-forming-word-news-white-background_181624-60840.jpg",
      publishat: json["publishat"]?? "",
       content: json["content"]?? ""
       ) ;
 }
}

