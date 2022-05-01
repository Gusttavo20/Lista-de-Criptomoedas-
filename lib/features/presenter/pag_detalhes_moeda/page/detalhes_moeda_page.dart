import 'package:flutter/material.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';
import 'package:listademoedas/features/presenter/pag_detalhes_moeda/widget/detalhes_moeda_widget.dart';
import 'package:listademoedas/features/presenter/pag_detalhes_moeda/widget/image_nome_moeda_widget.dart';

class DetalhesMoedaPage extends StatelessWidget {
  final Moeda moeda;

  const DetalhesMoedaPage({
    Key? key,
    required this.moeda,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF01579B),
        title: Text(moeda.currencyName!),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              NomeImageMoeda(
                moeda: moeda,
              ),
              const SizedBox(height: 10),
              DetalhesMoedaWidget(
                moeda: moeda,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
