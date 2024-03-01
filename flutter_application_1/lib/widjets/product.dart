import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';

class ProductWidget extends StatefulWidget {
  final product ;

  ProductWidget({required this.product});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool expanded = false;
  
  @override
  Widget build(BuildContext context) {
String shortDescription =
        widget.product.description.substring(0, 45) + '...';

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
         
    GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenImage(imageUrl: widget.product.image),
      ),
    );
  },
  child: Container(
    height: 250,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: NetworkImage(widget.product.image),
        fit: BoxFit.cover,
      ),
    ),
  ),
),
          SizedBox(height: 10),
          // Product Title
          Text(
            widget.product.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          // Product Description
           expanded ? Text(
                  widget.product.description,
                  style: TextStyle(fontSize: 16),
                )
              :
               Text(
                  shortDescription,
                  style: TextStyle(fontSize: 16),
                ),
          SizedBox(height: 5),
          // Product Price
          Text(
            '\$${widget.product.price.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 5),
          // Product Category
          Text(
            'Category: ${widget.product.category}',
            style: const TextStyle(fontSize: 16,color: Color.fromARGB(255, 1, 9, 100)),
          ),
          SizedBox(height: 5),
          // Product Rating
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange, size: 20),
               Icon(Icons.star, color: Colors.orange, size: 20),
                Icon(Icons.star, color: Colors.orange, size: 20),
                 Icon(Icons.star, color: Colors.orange, size: 20),
              SizedBox(width: 5),
              Text(
                '${widget.product.rat.toStringAsFixed(1)} (${widget.product.count} reviews)',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                     
                       expanded = !expanded;
                    });
                   
                  },
                 child: Text(expanded ? 'Close ' : 'View Description'),
                ),
              ), 
              ], ),
 SizedBox(height: 10),

           
                
               ElevatedButton(
                
                  onPressed: () {
                    // Implement your button action here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Background color
                    onPrimary: Colors.white, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
           


            ],
        
        
      ),
    );
  }
}
class FullScreenImage extends StatelessWidget {
  final String imageUrl;

  FullScreenImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Image.network(
          imageUrl,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
