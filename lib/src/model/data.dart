import 'package:covidapp/src/model/countries.dart';

import 'global.dart';

class Data {
  Global global;
  List<Countries> countries;
  String date;

  Data({this.global, this.countries, this.date});

  Data.fromJson(Map<String, dynamic> json) {
    global = json['Global'] != null ? new Global.fromJson(json['Global']) : null;
    if (json['Countries'] != null) {
      countries = new List<Countries>();
      json['Countries'].forEach((v) { countries.add(new Countries.fromJson(v)); });
    }
    date = json['Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.global != null) {
      data['Global'] = this.global.toJson();
    }
    if (this.countries != null) {
      data['Countries'] = this.countries.map((v) => v.toJson()).toList();
    }
    data['Date'] = this.date;
    return data;
  }
}






