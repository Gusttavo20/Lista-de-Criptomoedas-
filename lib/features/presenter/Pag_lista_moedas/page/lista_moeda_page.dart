import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listademoedas/features/presenter/Pag_lista_moedas/controller/lista_moeda_controller.dart';
import 'package:listademoedas/features/presenter/Pag_lista_moedas/widget/appbar_widget.dart';

class ListaMoedasPage extends StatelessWidget {
  int index = 0;

  ListaMoedasPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarPageLista(
        height: size.height * 0.09,
      ),
      body: buildPages(),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return const ListaMoedaController();
      default:
        return Container();
    }
  }
}
