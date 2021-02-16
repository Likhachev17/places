import 'package:flutter/material.dart';

/// Sight model
class Sight {
  final String nameSight;
  final double lan;
  final double lon;
  final String url;
  final String details;
  final String type;
  final String workTime;
  final TimeOfDay openTime;
  final TimeOfDay closeTime;
  final String scheduledDate;

  Sight(
      {@required this.nameSight,
      @required this.lan,
      @required this.lon,
      @required this.url,
      @required this.details,
      @required this.type,
      @required this.workTime,
      this.openTime,
      this.closeTime,
      this.scheduledDate});
}
