import 'package:flutter/material.dart';

class TextId extends StatefulWidget {
  const TextId({
    Key? key,
  }) : super(key: key);

  @override
  State<TextId> createState() => _TextIdState();
}

class _TextIdState extends State<TextId> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "ID: ",
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}
