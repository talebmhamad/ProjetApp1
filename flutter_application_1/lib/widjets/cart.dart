
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/article.dart';



class CardWidget extends StatefulWidget {
  final Article news;
  
  CardWidget({Key? key, required this.news}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();

  
}


class _CardWidgetState extends State<CardWidget> {
  bool expanded = false;
    bool isFavorited =false ;

   
  @override
    
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text( expanded?
              widget.news.title:(widget.news.title.length > 25 ? widget.news.title.substring(0, 25) + "..." : widget.news.title),
 
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
       const   SizedBox(height: 8),
          if (widget.news.description.isNotEmpty)
             Text( expanded ?
             widget.news.description :( widget.news.description.length > 25 ? widget.news.description.substring(0, 25) + "..." :widget.news.description),
              style: TextStyle(fontSize: 14),
            ),
        const  SizedBox(height: 8),
          if (widget.news.urltoimage != null && widget.news.urltoimage.isNotEmpty)
            Image.network(
              widget.news.urltoimage,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
           const SizedBox(height: 8,),
       
           Row(
              children:[Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        expanded = !expanded;
                      });
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      expanded ? "Read Less" : "Read More",
                      style: const TextStyle(
                        color: Colors.blue, 
                      ),
                    ),
                  ),
                 
                )
            ,Align(
              
                alignment: Alignment.centerLeft,
                child: 
                Padding(
                   padding: EdgeInsets.only(left: 230),
                  child:
                IconButton(
                  onPressed: (){
                   
                  setState(() {
                    isFavorited = !isFavorited;
                    
                  });
                }, icon: Icon(Icons.favorite, color: isFavorited ? Colors.red : Colors.grey,),
                ))
                ),
                ]),
          ],
      ),
    );
  }
}