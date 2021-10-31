import 'package:alibabacollection/Store/product.dart';

import 'category.dart';
class AppData {
  static List<Product> productList = [
    Product(
        id: 1,
        name: 'electric Tv',
        price: 4440.00,
        isSelected: true,
        isliked: false,
        image: 'images/elec tv.jpg',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'LCD',
        price: 49999,
        isliked: false,
        image: 'images/lcd.jpg',
        category: "Trending Now"),
  ];
  static List<Product> cartList = [
    Product(
        id: 1,
        name: 'Fans',
        price: 2400.00,
        isSelected: true,
        isliked: false,
        image: 'images/fans.jpg',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'AC',
        price: 390000.00,
        isliked: false,
        image: 'images/ac.png',
        category: "Trending Now"),
    Product(
        id: 3,
        name: 'Samsung',
        price: 490000.00,
        isliked: false,
        image: 'images/samsung.jpg',
        category: "Trending Now"),
    Product(
        id: 4,
        name: 'Nike Air Max 200',
        price: 2400.00,
        isSelected: true,
        isliked: false,
        image: 'images/nikes.jpg',
        category: "Trending Now"),
    Product(
        id: 5,
        name: 'Grocery',
        price: 240.00,
        isSelected: true,
        isliked: false,
        image: 'images/groce.jpg',
        category: "Trending Now"),
    Product(
        id: 6,
        name: 'Iphone',
        price: 300000.00,
        isSelected: true,
        isliked: false,
        image: 'assets/small_tilt_shoe_1.png',
        category: "Trending Now"),

  ];
  static List<Category> categoryList = [
    Category(),
    Category(
        id: 1,
        name: "Electronics",
        image: 'images/ele.jpg',
        isSelected: true),
    Category(id: 2, name: "Cars", image: 'images/car.png'),
    Category(id: 3, name: "Mobile", image: 'images/iphone.jpg'),
    Category(id: 4, name: "Clothes", image: 'images/cloths.jpg'),
    Category(id: 4, name: "Groceries", image: 'images/groce.jpg'),


  ];
  static List<String> showThumbnailList = [
    "images/samsung.jpg",
    "images/ele.jpg",

  ];
  static String description =
      "Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.";
}
