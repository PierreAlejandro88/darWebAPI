
import 'dart:convert';

import 'package:paquetes/classes/persona.dart';
import 'package:paquetes/classes/support.dart';

ResponseClass responseClassFromJson(String str) => ResponseClass.fromJson(json.decode(str));

String responseClassToJson(ResponseClass data) => json.encode(data.toJson());

class ResponseClass {
    int? page;
    int? perPage;
    int? total;
    int? totalPages;
    List<Persona>? data;
    Support? support;

    ResponseClass({
        this.page,
        this.perPage,
        this.total,
        this.totalPages,
        this.data,
        this.support,
    });

    factory ResponseClass.fromJson(Map<String, dynamic> json) => ResponseClass(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: json["data"] == null ? [] : List<Persona>.from(json["data"]!.map((x) => Persona.fromJson(x))),
        support: json["support"] == null ? null : Support.fromJson(json["support"]),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "support": support?.toJson(),
    };
}