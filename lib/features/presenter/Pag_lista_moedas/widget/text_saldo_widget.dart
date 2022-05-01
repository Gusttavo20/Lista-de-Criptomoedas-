import 'package:flutter/material.dart';

class TextSaldo extends StatefulWidget {
  const TextSaldo({
    Key? key,
  }) : super(key: key);

  @override
  State<TextSaldo> createState() => _TextSaldoState();
}

class _TextSaldoState extends State<TextSaldo> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Saldo:",
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}
