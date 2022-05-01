import 'package:flutter/material.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';

class DetalhesAbout extends StatelessWidget {
  final Moeda moeda;

  const DetalhesAbout({
    Key? key,
    required this.moeda,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          moeda.details!.about.toString(),
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
