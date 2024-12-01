import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final String description;

  const DetailData({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 2, color: Colors.grey)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 0.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16,
              ),
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          )
        ],
      ),
    );
  }
}
