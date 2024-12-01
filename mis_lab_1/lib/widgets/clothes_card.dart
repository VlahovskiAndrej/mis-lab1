import 'package:flutter/material.dart';
import 'package:mis_lab_1/models/model.dart';
import 'package:mis_lab_1/widgets/clothes_card_data.dart';

class ClothesCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String description;
  final int price;

  const ClothesCard(
      {super.key,
      required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0x9BCDCDCD),
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: const Color.fromRGBO(139, 139, 139, 0.608),
        onTap: () => {
          Navigator.pushNamed(context, "/details",
              arguments: Piece(
                  id: id,
                  name: name,
                  image: image,
                  description: description,
                  price: price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(51, 76, 54, 1).withOpacity(0.8),
                  width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: ClothesCardData(
            id: id,
            name: name,
            image: image,
            description: description,
            price: price,
          ),
        ),
      ),
    );
  }
}
