import 'package:flutter/cupertino.dart';

class ProfileTile {
  IconData? tileIcon;
  String? tileName;
  String? tileDescription;

  ProfileTile(
      {required this.tileIcon,
      required this.tileDescription,
      required this.tileName});

  Map<String, dynamic> toMap() {
    return {
      'tileIcon': tileIcon,
      'tileName': tileName,
      'tileDescription': tileDescription
    };
  }

  factory ProfileTile.fromJson(Map<String, dynamic> json) {
    return ProfileTile(
      tileDescription: json['tileDescription'],
      tileIcon: json['tileIcon'],
      tileName: json['tileName']
    );
  }
}
