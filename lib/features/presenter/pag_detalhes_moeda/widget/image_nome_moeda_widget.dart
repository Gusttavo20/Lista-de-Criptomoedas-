import 'package:flutter/material.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';

class NomeImageMoeda extends StatelessWidget {
  final Moeda moeda;

  const NomeImageMoeda({
    Key? key,
    required this.moeda,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (CircleAvatar(
          backgroundImage: NetworkImage(moeda.imageUrl!),
          radius: 80,
        )),
        const SizedBox(
          height: 24,
        ),
        Text(
          moeda.currencyName!,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ],
    );
  }
}
