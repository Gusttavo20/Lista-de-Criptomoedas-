import 'package:flutter/material.dart';

class Moeda {
  String? currencyName;
  String? cotation;
  String? symbol;
  String? imageUrl;
  Details? details;

  Moeda(
      {this.currencyName,
      this.cotation,
      this.symbol,
      this.imageUrl,
      this.details});

  Moeda.fromJson(Map<String, dynamic> json) {
    currencyName = json['currency_name'];
    cotation = json['cotation'];
    symbol = json['symbol'];
    imageUrl = json['image_url'];
    details =
        json['details'] != null ? new Details.fromJson(json['details']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency_name'] = this.currencyName;
    data['cotation'] = this.cotation;
    data['symbol'] = this.symbol;
    data['image_url'] = this.imageUrl;
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    return data;
  }

  map(Moeda Function(dynamic e) param0) {}
}

class Details {
  String? about;
  double? fee;

  Details({this.about, this.fee});

  Details.fromJson(Map<String, dynamic> json) {
    about = json['about'];
    fee = json['fee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['about'] = this.about;
    data['fee'] = this.fee;
    return data;
  }
}
