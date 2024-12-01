import 'package:flutter/material.dart';
import 'package:mis_lab_1/models/model.dart';
import 'package:mis_lab_1/widgets/clothes_card.dart';

class ClothesGrid extends StatefulWidget {
  final List<Piece> clothes;
  const ClothesGrid({super.key, required this.clothes});
  @override
  _ClothesGridState createState() => _ClothesGridState();
}

class _ClothesGridState extends State<ClothesGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.clothes
          .map(
            (piece) => ClothesCard(
              id: piece.id,
              name: piece.name,
              image: piece.image,
              description: piece.description,
              price: piece.price,
            ),
          )
          .toList(),
    );
  }
}
