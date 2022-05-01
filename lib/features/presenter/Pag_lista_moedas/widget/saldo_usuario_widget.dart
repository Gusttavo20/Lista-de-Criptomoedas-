import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CampoSaldo extends StatelessWidget {
  CampoSaldo({
    Key? key,
  }) : super(key: key);

  // ignore: non_constant_identifier_names
  var FormatarEmReais = NumberFormat.currency(locale: 'pt_BR');
  double saldo = 15.455;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              FormatarEmReais.format(saldo),
            )
          ],
        ),
      ),
    );
  }
}
