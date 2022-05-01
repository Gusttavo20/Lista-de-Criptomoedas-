import 'package:flutter/material.dart';
import 'package:listademoedas/features/data/datasoucers/moedas_json.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';
import 'package:listademoedas/features/presenter/Pag_lista_moedas/widget/lista_moeda_widget.dart';
import 'package:listademoedas/features/presenter/pag_detalhes_moeda/page/detalhes_moeda_page.dart';

class ListaMoedaController extends StatelessWidget {
  const ListaMoedaController({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<Moeda>>(
          future: MoedasJson.ReadMoedaJson(context),
          builder: (context, snapshot) {
            final moedas = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return const Center(child: Text('Some error occurred!'));
                } else {
                  return buildMoedas(moedas!);
                }
            }
          },
        ),
      );
}
