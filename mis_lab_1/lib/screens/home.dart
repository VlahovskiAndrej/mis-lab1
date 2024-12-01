import 'package:flutter/material.dart';
import 'package:mis_lab_1/models/model.dart';

import '../widgets/clothes_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Piece> clothesList = [
    Piece(
      id: 1,
      name: "T-Shirt",
      image:
          "https://static.zara.net/assets/public/b63d/a420/6dca422f82ed/a7ce961897d0/01887310800-e1/01887310800-e1.jpg?ts=1725551228582&w=560",
      description: "A comfortable cotton T-shirt available in various sizes.",
      price: 20,
    ),
    Piece(
      id: 2,
      name: "Jeans",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXw8ojmoR72b-i5Hk8KbJOU2zTZfUueEqVzw&s",
      description: "Stylish blue denim jeans with a slim fit design.",
      price: 50,
    ),
    Piece(
      id: 3,
      name: "Jacket",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGQ_wrP9Jzz70ZTPemblzZ1ptIfsmykSVC7w&s",
      description: "A warm and cozy winter jacket, perfect for cold weather.",
      price: 100,
    ),
    Piece(
      id: 4,
      name: "Shirt",
      image:
          "https://dexstitches.com/image/cache/catalog/2024%20April/20TH/LEKAN/shop%20ZARA%20CREASED%20EFFECT%20SHORT%20SLEEVE%20Men%20shirt%20Green%20-1080x1440.jpg",
      description: "A beautiful evening dress for special occasions.",
      price: 75,
    ),
    Piece(
      id: 5,
      name: "Sneakers",
      image:
          "https://static.zara.net/assets/public/7d13/731e/969f46da9db0/5960b7ed04f6/12200320800-e2/12200320800-e2.jpg?ts=1722335281822",
      description: "Trendy sneakers for casual outings and sports.",
      price: 60,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(51, 76, 54, 1),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 24,
            )),
        title: const Text("211136",
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: ClothesGrid(clothes: clothesList),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}
