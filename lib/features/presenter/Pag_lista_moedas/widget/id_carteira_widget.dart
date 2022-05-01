import 'package:flutter/material.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';

class CampoIdCarteira extends StatelessWidget {
  const CampoIdCarteira({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Text('c0inS-13435-2342-zksh-34556')],
      ),
    );
  }
}
