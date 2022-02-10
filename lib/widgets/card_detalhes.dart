import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final Function atualizaPagina;
  final formatacaoReais =
      NumberFormat.compactCurrency(locale: 'pt_BR', symbol: 'R\$');

  CardDetalhes({Key? key, required this.movel, required this.atualizaPagina})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(texto: movel.titulo),
          TextoDetalhes(texto: movel.descricao),
          Container(
            margin: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formatacaoReais.format(movel.preco),
                    style: GoogleFonts.alata()),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  child: const Text(
                    "Comprar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    _verificarListaItemCarrinho(
                      Inicio.itensCarrinho,
                      ItemCarrinho(quantidade: 1, movel: movel),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _adicionarItemCarrinho(item) {
    Inicio.itensCarrinho.add(item);
    atualizaPagina();
  }

  void _verificarListaItemCarrinho(
      List<ItemCarrinho> lista, ItemCarrinho item) {
    int indicemovel = lista.indexWhere((item) => item.movel == movel);
    if (indicemovel >= 0) {
      lista[indicemovel].quantidade = lista[indicemovel].quantidade + 1;
    } else {
      _adicionarItemCarrinho(item);
    }
  }
}
