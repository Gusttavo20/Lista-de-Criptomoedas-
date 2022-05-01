import 'package:flutter/material.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';
import 'package:listademoedas/features/presenter/pag_detalhes_moeda/widget/delhates_about_widget.dart';
import 'package:listademoedas/features/presenter/pag_detalhes_moeda/widget/detalhes_fee_widget.dart';

class DetalhesMoedaWidget extends StatelessWidget {
  final Moeda moeda;

  const DetalhesMoedaWidget({
    Key? key,
    required this.moeda,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 26, right: 0, bottom: 0),
      child: Container(
        height: size.height * 0.56,
        width: size.width * 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Color(0xFF01579B),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: DetalheFee(
                moeda: moeda,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: DetalhesAbout(
                moeda: moeda,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
