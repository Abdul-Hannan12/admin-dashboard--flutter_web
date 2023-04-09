import 'package:flutter/material.dart';

const Color light = Color(0xFFF7F8FC);
const Color lightGrey = Color(0xFFA4A6B3);
const Color dark = Color(0xFF363740);
const Color active = Color(0xFF3C19C0);

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
