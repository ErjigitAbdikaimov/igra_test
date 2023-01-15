import 'package:flutter/animation.dart';
import 'package:igra_test/constanta/app_text.dart';
import 'package:igra_test/models/suroo.dart';

class Continents {
  const Continents(
      {required this.name,
      required this.icon,
      required this.color,
      this.suroo});
  final String name;
  final String icon;
  final Color color;
  final List<Suroo>? suroo;
}

const africa = Continents(
  name: Apptext.africa,
  icon: 'africa',
  color: Color(0xFFFEEF35),
);
final asia = Continents(
  name: Apptext.asia,
  icon: 'asia',
  color: Color(0xFFFE8181),
  suroo: asiaQuestenos,
);
const australia = Continents(
  name: Apptext.australia,
  icon: 'australia',
  color: Color(0xFF68F789),
);
const europe = Continents(
  name: Apptext.europa,
  icon: 'europe',
  color: Color(0xFF81A2FE),
);
const northAmerika = Continents(
  name: Apptext.northAmerika,
  icon: 'north_america',
  color: Color(0xFFFE8100),
);
const southAmerika = Continents(
  name: Apptext.southAmerika,
  icon: 'south_america',
  color: Color(0xFFE5AAE5),
);
List<Continents> continents = [
  europe,
  asia,
  northAmerika,
  southAmerika,
  africa,
  australia,
];
