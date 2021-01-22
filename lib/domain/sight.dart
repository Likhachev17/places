import 'package:flutter/material.dart';

class Sight {
  /*You can edit Sight objects parameters here*/
  final String nameSight;
  final double lan;
  final double lon;
  final String url;
  final String details;
  final String type;

  Sight({
    @required this.nameSight,
    @required this.lan,
    @required this.lon,
    @required this.url,
    @required this.details,
    @required this.type,
  });
}
