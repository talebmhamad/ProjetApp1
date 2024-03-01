class product {

String title;
String description;
double  price;
String image;
String category;
double rat; 
int count;
   product({required this.title,required this.image,required this.count, required this.description,required this.price,required this.category,required this.rat});
   factory product.fromJsonProduct(Map<String,dynamic>productjson){
    return product(
    
    title: productjson["title"] ??"",
    description: productjson["description"] ??"",
   price: (productjson["price"] ?? 0).toDouble(),
    category: productjson["category"] ??"",
    rat: (productjson["rating"]["rate"] ?? 0).toDouble(),
    image:productjson["image"]??"",
        count: productjson["rating"]["count"] ?? 0,
    );
   }
 }
