import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';

class DetalheFee extends StatelessWidget {
  final Moeda moeda;

  DetalheFee({
    Key? key,
    required this.moeda,
  }) : super(key: key);

  // ignore: non_constant_identifier_names
  var FormatarEmReais = NumberFormat.currency(locale: 'pt_BR');

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          "Informações: ",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            "Taxa: ",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Container(
          height: 30,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                FormatarEmReais.format(moeda.details!.fee),
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
