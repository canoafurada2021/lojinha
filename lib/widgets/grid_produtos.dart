import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/elemento_grid.dart';

import '../models/movel.dart';

class GridProdutos extends StatelessWidget {
  final Function atualiza;
  final moveis;

  GridProdutos({this.moveis,required this.atualiza});

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
          atualiza: atualiza,
        );
      },
    );
  }
}
