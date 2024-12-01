import 'package:flutter/material.dart';

class ClothesCardData extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String description;
  final int price;

  const ClothesCardData(
      {super.key,
      required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Image.network(image,
                fit: BoxFit.contain, alignment: Alignment.bottomRight)),
        const Divider(),
        Text(
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        ),
      ],
    );
  }
}
