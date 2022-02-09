import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/elemento_grid.dart';

import '../models/movel.dart';

class GridProdutos extends StatelessWidget {
  final moveis;

  GridProdutos({this.moveis});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int indice) {
        final movel = Movel.fromJson(moveis[indice]);
        return  ElementoGridProdutos(
          movel: movel,
        );
      },
    );
  }
}
