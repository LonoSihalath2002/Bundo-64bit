class Categories {
  final String image;

  const Categories(
    this.image,
  );
  static const List<Categories> categories = [
    Categories('images/Shirt.png'),
    Categories('images/Electronic.png'),
    Categories('images/HomeApplication.png'),
    Categories('images/Beauh.png'),
    Categories('images/Furniture.png'),
    Categories('images/Sport.png'),
  ];
}

class Product {
  final String name;
  final int price;
  final String image;
  final bool isPopular;

  const Product({required this.name, required this.price, required this.image, required this.isPopular});

  static const List<Product> products = [
    Product(name: 'TV', price: 399, image: 'images/TV1.png',isPopular: false,),
    Product(name: 'Ipad', price: 399, image: 'images/Ipad.png', isPopular: false,),
    Product(name: 'Hast', price: 399, image: 'images/Hats.jpg', isPopular: false,),
    Product(name: 'Headphone', price: 399, image: 'images/Headphones.png', isPopular: false,),
    Product(name: 'Hast', price: 399, image: 'images/Hats1.jpg', isPopular: false,),
    Product(name: 'Headphone', price: 399, image: 'images/Headphonesbt.jpg', isPopular: true,),
    Product(name: 'Phonebt', price: 399, image: 'images/Phonebt1.jpg', isPopular: true),
    Product(name: 'Shoes', price: 399, image: 'images/Shoes1.jpg', isPopular: true),
    Product(name: 'Lotion', price: 399, image: 'images/Lotion.jpg', isPopular: true),
    Product(name: 'Headphone', price: 399, image: 'images/Headphones1.jpg', isPopular: true),
    Product(name: 'Shoes', price: 399, image: 'images/Shoes2.jpg', isPopular: false),
    Product(name: 'Muegame', price: 399, image: 'images/Muegame2.jpg', isPopular: false),
    Product(name: 'Back', price: 399, image: 'images/Back1.jpg', isPopular: false),
    Product(name: 'Tung', price: 399, image: 'images/Tung1.jpg', isPopular: false),
    Product(name: 'Shirtkila', price: 399, image: 'images/Shirtkila1.png', isPopular: false),
    Product(name: 'Ipad', price: 399, image: 'images/Ipad2.png', isPopular: false),
    Product(name: 'Headphones', price: 399, image: 'images/Headphones.png', isPopular: false),
    Product(name: 'Phone', price: 399, image: 'images/Phone2.jpg', isPopular: false),
    Product(name: 'VR', price: 399, image: 'images/VR.png', isPopular: false),
    Product(name: 'Pan', price: 399, image: 'images/Pan.jpg', isPopular: false),
  ];


}
