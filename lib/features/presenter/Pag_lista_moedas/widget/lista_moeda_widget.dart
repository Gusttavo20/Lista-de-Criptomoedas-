import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';
import 'package:listademoedas/features/presenter/pag_detalhes_moeda/page/detalhes_moeda_page.dart';

// ignore: non_constant_identifier_names
var FormatarEmReais = NumberFormat.currency(locale: 'pt_BR');

Widget buildMoedas(List<Moeda> moedas) => ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: moedas.length,
      itemBuilder: (context, index) {
        final moeda = moedas[index];

        return ListTile(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) =>
                  DetalhesMoedaPage(moeda: moeda),
            ),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              moeda.imageUrl!,
            ),
          ),
          title: Text(
            moeda.currencyName!,
          ),
          subtitle: Text(
            moeda.cotation!,
          ),
        );
      },
    );
