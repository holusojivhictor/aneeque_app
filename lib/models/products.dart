import 'package:flutter/material.dart';
import 'package:aneeque_app/models/products_colors.dart';

class Product {
  final AllProductsColors productsColors;
  final String title, description, fullDescription, condition, manufacturer, notifTitle;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final int quantitySold;
  final bool isFavourite, isPopular;

  Product ({
    required this.productsColors,
    required this.images,
    required this.title,
    required this.description,
    required this.fullDescription,
    required this.colors,
    required this.price,
    required this.quantitySold,
    required this.condition,
    required this.manufacturer,
    required this.notifTitle,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}


class Categories {
  final List<Product> allCategoriesProducts;
  final String sectionTitle;

  Categories({required this.allCategoriesProducts, required this.sectionTitle});
}

class Specials{
  final List<Categories> allSpecials;
  Specials({required this.allSpecials});
}

List<Categories> allCategoriesSmartphones = [
  Categories(
    sectionTitle: "Samsung",
    allCategoriesProducts: samsungSmartPhonesProducts,
  ),
  Categories(
    sectionTitle: "Apple",
    allCategoriesProducts: appleSmartPhonesProducts,
  ),
  Categories(
    sectionTitle: "Xiaomi",
    allCategoriesProducts: xiaomiSmartPhonesProducts,
  ),
  Categories(
    sectionTitle: "Huawei",
    allCategoriesProducts: huaweiSmartPhonesProducts,
  ),
];

List<Categories> allCategoriesFashion = [
  Categories(
    sectionTitle: "Samsung",
    allCategoriesProducts: samsungSmartPhonesProducts,
  ),
  Categories(
    sectionTitle: "Apple",
    allCategoriesProducts: appleSmartPhonesProducts,
  ),
  Categories(
    sectionTitle: "Samsung",
    allCategoriesProducts: samsungSmartPhonesProducts,
  ),
  Categories(
    sectionTitle: "Apple",
    allCategoriesProducts: appleSmartPhonesProducts,
  ),
];

List<Specials> allCategories = [
  Specials(allSpecials: allCategoriesSmartphones),
  Specials(allSpecials: allCategoriesFashion),
];

//The demo products

List<Product> demoProducts = [
  Product(
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      Colors.black,
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productsColors: allProductsColors[0],
    title: "Wireless Controller for PS4",
    fullDescription: fullDescription,
    description: description,
    price: 64.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Colors.white,
    ],
    productsColors: allProductsColors[1],
    title: "Nike Sport White - Man Pant",
    fullDescription: fullDescription,
    description: description,
    price: 50.99,
    rating: 4.1,
    isPopular: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Colors.blue,
      Colors.red,
      Colors.green,
    ],
    productsColors: allProductsColors[2],
    title: "Gloves XC Omega - Polygon",
    fullDescription: fullDescription,
    description: description,
    price: 36.99,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Colors.black,
    ],
    productsColors: allProductsColors[3],
    title: "H800 Black Logitech Headset",
    fullDescription: fullDescription,
    description: description,
    price: 20.99,
    rating: 4.1,
    isFavourite: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
];

List<Product> recentlyViewed = [
  Product(
    images: [
      "assets/images/gaming_chair_black_1.png",
      "assets/images/gaming_chair_blue_1.jpg",
      "assets/images/gaming_chair_gold_1.jpg",
      "assets/images/gaming_chair_red_1.jpg",
    ],
    colors: [
      Colors.black,
      Colors.blue,
      const Color(0xFFDECB9C),
      const Color(0xFFF6625E),
    ],
    productsColors: allProductsColors[4],
    title: "AutoFull Gaming Chair High Back",
    fullDescription: fullDescription,
    description: description,
    price: 229.99,
    rating: 4.4,
    isFavourite: false,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/mouse_black_1.png",
    ],
    colors: [
      Colors.black,
      Colors.white,
    ],
    productsColors: allProductsColors[5],
    title: "Redragon RGB Wired Gaming Mouse",
    fullDescription: fullDescription,
    description: description,
    price: 40.99,
    rating: 4.3,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/goku_action_figure_1.png",
    ],
    colors: [
      Colors.orange,
    ],
    productsColors: allProductsColors[6],
    title: "Dragon Ball Super Action Figure - Goku",
    fullDescription: fullDescription,
    description: description,
    price: 66.99,
    rating: 4.6,
    isFavourite: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/keyboard_mouse_black_1.png",
    ],
    colors: [
      Colors.black,
      Colors.white,
      Colors.pinkAccent,
    ],
    productsColors: allProductsColors[7],
    title: "Gaming Keyboard and Mouse Combo",
    fullDescription: fullDescription,
    description: description,
    price: 10.99,
    rating: 4.0,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
];


List<Product> samsungSmartPhonesProducts = [
  Product(
    images: [
      "assets/images/samsung_a32_black_1.png",
    ],
    colors: [
      const Color(0xFF282828),
      const Color(0xFF94C0D9),
      const Color(0xFFD7D4E5),
      Colors.white,
    ],
    productsColors: allProductsColors[8],
    title: "Samsung Galaxy A32 5G 64gb Metro Pcs by T-mobile",
    fullDescription: fullDescription,
    description: description,
    price: 176.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Samsung",
    quantitySold: 21,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/samsung_a21s_black_1.png",
    ],
    colors: [
      const Color(0xFF282B3A),
      const Color(0xFFDFE4E0),
      const Color(0xFF344190),
    ],
    productsColors: allProductsColors[9],
    title: "Samsung Galaxy A21S - 64GB (GSM unlocked) 6.5' Duos T-mobile",
    fullDescription: fullDescription,
    description: description,
    price: 191.99,
    rating: 4.1,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Samsung",
    quantitySold: 1069,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/samsung_s10e_black_1.png",
    ],
    colors: [
      const Color(0xFF181C25),
    ],
    productsColors: allProductsColors[10],
    title: "New Samsung Galaxy S10e G970U GSM Unlocked T-mobile AT&T",
    fullDescription: fullDescription,
    description: description,
    price: 249.99,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    condition: "Open Box",
    manufacturer: "Samsung",
    quantitySold: 25,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/samsung_s10_plus_silver_1.png",
    ],
    colors: [
      const Color(0xFFE6E2E1),
    ],
    productsColors: allProductsColors[11],
    title: "Samsung Galaxy S10 Plus SM-G975U 128gb Black Fedex",
    fullDescription: fullDescription,
    description: description,
    price: 298.99,
    rating: 4.1,
    isFavourite: true,
    condition: "Open Box",
    manufacturer: "Samsung",
    quantitySold: 2460,
    notifTitle: "",
  ),
];

List<Product> appleSmartPhonesProducts = [
  Product(
    images: [
      "assets/images/iphone_7_silver_1.png",
    ],
    colors: [
      const Color(0xFFEAEAEA),
      const Color(0xFF1D1E22),
      const Color(0xFFC2B7A5),
    ],
    productsColors: allProductsColors[12],
    title: "Apple iPhone 7 32GB - Factory Unlocked Smartphone",
    fullDescription: fullDescription,
    description: description,
    price: 108.99,
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
    condition: "Pre-Owned",
    manufacturer: "Apple",
    quantitySold: 231,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/iphone_xr_black_1.png",
    ],
    colors: [
      const Color(0xFF1C1B20),
      const Color(0xFFC81004),
    ],
    productsColors: allProductsColors[13],
    title: "Apple iPhone XR 64GB Factory Unlocked Smartphone AT&T Verizon",
    fullDescription: fullDescription,
    description: description,
    price: 339.99,
    rating: 4.5,
    isPopular: true,
    condition: "Pre-Owned",
    manufacturer: "Apple",
    quantitySold: 114,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/iphone_12_mini_black_1.png",
    ],
    colors: [
      const Color(0xFF161118),
      const Color(0xFF01305A),
      const Color(0xFFD2F0D8),
      const Color(0xFFF8272A),
      const Color(0xFFADA4DB),
    ],
    productsColors: allProductsColors[14],
    title: "Apple iphone 12 Mini 5G 64GB 128GB 256GB Unlocked Grade A+",
    fullDescription: fullDescription,
    description: description,
    price: 664.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    condition: "Refurbished",
    manufacturer: "Apple",
    quantitySold: 245,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/iphone_xs_gold_1.png",
    ],
    colors: [
      const Color(0xFFFBDBC2),
      const Color(0xFF27262B),
      const Color(0xFFE2E2E0),
    ],
    productsColors: allProductsColors[15],
    title: "Apple iphone XS Unlocked 64GB 128GB|Verizon AT&T T-Mobile",
    fullDescription: fullDescription,
    description: description,
    price: 484.99,
    rating: 4.2,
    isFavourite: true,
    condition: "Refurbished",
    manufacturer: "Apple",
    quantitySold: 290,
    notifTitle: "",
  ),
];


List<Product> xiaomiSmartPhonesProducts = [
  Product(
    images: [
      "assets/images/xiaomi_note_9_black_1.png",
    ],
    colors: [
      const Color(0xFF5C5C5C),
      const Color(0xFF037673),
      const Color(0xFF52559C),
    ],
    productsColors: allProductsColors[16],
    title: "Xiaomi Redmi 9 64GB, 4GB RAM 6.53 AI Quad Camera, LTE Factory Unlocked",
    fullDescription: fullDescription,
    description: description,
    price: 164.99,
    rating: 4.5,
    isFavourite: false,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Xiaomi",
    quantitySold: 431,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/xiaomi_mi_11_blue_1.png",
    ],
    colors: [
      const Color(0xFF7988B1),
      const Color(0xFF232323),
    ],
    productsColors: allProductsColors[17],
    title: "Xiaomi Mi 11 Lite (128GB, 6GB) 6.55 90HZ AMOLED, 64MP Triple Camera, Snapdragon 732G",
    fullDescription: fullDescription,
    description: description,
    price: 329.99,
    rating: 4.7,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Xiaomi",
    quantitySold: 140,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/xiaomi_mi_10T_silver_1.png",
    ],
    colors: [
      const Color(0xFF6D6D77),
    ],
    productsColors: allProductsColors[18],
    title: "Xiaomi Mi 10T - Smartphone 6GB + 128GB, Dual Sim, Alexa Hands-Free, Grigio(Lunar Silver)",
    fullDescription: fullDescription,
    description: description,
    price: 384.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Xiaomi",
    quantitySold: 425,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/xiaomi_note_10_black_1.png",
    ],
    colors: [
      const Color(0xFF2B2C30),
    ],
    productsColors: allProductsColors[19],
    title: "Xiaomi Redmi Note 10 | 128GB 4GB RAM | GSM LTE Factory Unlocked Smartphone | International Model",
    fullDescription: fullDescription,
    description: description,
    price: 274.99,
    rating: 4.3,
    isFavourite: true,
    condition: "Brand New",
    manufacturer: "Xiaomi",
    quantitySold: 290,
    notifTitle: "",
  ),
];


List<Product> huaweiSmartPhonesProducts = [
  Product(
    images: [
      "assets/images/huawei_p30_blue_1.png",
    ],
    colors: [
      const Color(0xFF5DE3FE),
    ],
    productsColors: allProductsColors[20],
    title: "Huawei P30 128GB + 6GB RAM 6.1 LTE Factory Unlocked GSM Smartphone Breathing Crystal",
    fullDescription: fullDescription,
    description: description,
    price: 478.99,
    rating: 4.5,
    isFavourite: false,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Huawei",
    quantitySold: 131,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/huawei_p40_black_1.png",
    ],
    colors: [
      const Color(0xFF0F1014),
    ],
    productsColors: allProductsColors[21],
    title: "Huawei P40 Lite Dual SIm 4G 128GB 6GB RAM International Version Midnight Black",
    fullDescription: fullDescription,
    description: description,
    price: 234.99,
    rating: 4.7,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Huawei",
    quantitySold: 120,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/huawei_p30_pro_pacific_blue_1.png",
    ],
    colors: [
      const Color(0xFF00E0F3),
    ],
    productsColors: allProductsColors[22],
    title: "Huawei P30 Pro 128GB + 8GB RAM 40MP LTE Factory Unlocked (International Version)",
    fullDescription: fullDescription,
    description: description,
    price: 679.99,
    rating: 4.4,
    isFavourite: true,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Huawei",
    quantitySold: 45,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/huawei_mate_40_black_1.png",
    ],
    colors: [
      const Color(0xFF121214),
    ],
    productsColors: allProductsColors[23],
    title: "Huawei Mate 40 Pro 5G 256GB 8GB RAM International Version - Black",
    fullDescription: fullDescription,
    description: description,
    price: 799.99,
    rating: 4.5,
    isFavourite: true,
    condition: "Brand New",
    manufacturer: "Huawei",
    quantitySold: 115,
    notifTitle: "",
  ),
];

// List of favorite products to be removed after successful method creation

List<Product> notificationProducts = [
  Product(
    images: [
      "assets/images/goku_action_figure_1.png",
    ],
    colors: [
      Colors.orange,
    ],
    productsColors: allProductsColors[6],
    title: "Dragon Ball Super Action Figure - Goku",
    fullDescription: fullDescription,
    description: description,
    price: 66.99,
    rating: 4.6,
    isFavourite: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "SELLER OFFER: US \$49.99",
  ),
  Product(
    images: [
      "assets/images/huawei_mate_40_black_1.png",
    ],
    colors: [
      const Color(0xFF121214),
    ],
    productsColors: allProductsColors[23],
    title: "Huawei Mate 40 Pro 5G 256GB 8GB RAM International Version - Black",
    fullDescription: fullDescription,
    description: description,
    price: 799.99,
    rating: 4.5,
    isFavourite: true,
    condition: "Brand New",
    manufacturer: "Huawei",
    quantitySold: 115,
    notifTitle: "WATCHED ITEM REMINDER",
  ),
  Product(
    images: [
      "assets/images/ps4_console_white_1.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      Colors.black,
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productsColors: allProductsColors[0],
    title: "Wireless Controller for PS4",
    fullDescription: fullDescription,
    description: description,
    price: 64.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "SELLER OFFER: US \$59.99",
  ),
];

List<Product> favProducts = [
  Product(
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      Colors.black,
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productsColors: allProductsColors[0],
    title: "Wireless Controller for PS4",
    fullDescription: fullDescription,
    description: description,
    price: 64.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Colors.blue,
      Colors.red,
      Colors.green,
    ],
    productsColors: allProductsColors[2],
    title: "Gloves XC Omega - Polygon",
    fullDescription: fullDescription,
    description: description,
    price: 36.99,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Colors.black,
    ],
    productsColors: allProductsColors[3],
    title: "H800 Black Logitech Headset",
    fullDescription: fullDescription,
    description: description,
    price: 20.99,
    rating: 4.1,
    isFavourite: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
  Product(
    images: [
      "assets/images/goku_action_figure_1.png",
    ],
    colors: [
      Colors.orange,
    ],
    productsColors: allProductsColors[6],
    title: "Dragon Ball Super Action Figure - Goku",
    fullDescription: fullDescription,
    description: description,
    price: 66.99,
    rating: 4.6,
    isFavourite: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
    notifTitle: "",
  ),
];

const String description = "Wireless Controller for PS4 gives you what you want in your gaming experience from precision control to sharing "
    "and this and that and the other thing...";

const String fullDescription = "Wireless Controller for PS4 gives you what you want in your gaming experience from precision control to sharing "
    "and this and that and the other thing, this here is me just rambling cos I don't have content for this. So, just take it like that. All right, bye";