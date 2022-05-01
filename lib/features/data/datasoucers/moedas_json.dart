import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listademoedas/features/domain/entites/moeda.dart';

class MoedasJson {
  static Future<List<Moeda>> ReadMoedaJson(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final dadosJson = await rootBundle.loadString('assets/criptomoedas.json');
    final body = json.decode(dadosJson);

    final list = body['data'] as List<dynamic>;

    return list.map((e) => Moeda.fromJson(e)).toList();
  }
}
