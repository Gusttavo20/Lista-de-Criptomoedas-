import 'package:flutter/material.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';
import 'package:listademoedas/features/presenter/Pag_lista_moedas/widget/id_carteira_widget.dart';
import 'package:listademoedas/features/presenter/Pag_lista_moedas/widget/saldo_usuario_widget.dart';
import 'package:listademoedas/features/presenter/Pag_lista_moedas/widget/text_id_widget.dart';
import 'package:listademoedas/features/presenter/Pag_lista_moedas/widget/text_saldo_widget.dart';

class AppBarPageLista extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const AppBarPageLista({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF01579B),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 5),
                    child: TextSaldo(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextId(),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 2, right: 13),
                child: CampoIdCarteira(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CampoSaldo(),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
