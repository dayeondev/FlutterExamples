import 'package:flutter/material.dart';
import 'package:planets/ui/home/PlanetRow.dart';
import 'package:planets/model/Planets.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new PlanetRow(PlanetDao.planets[2]);
  }
}