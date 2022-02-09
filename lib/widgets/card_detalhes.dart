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

  CardDetalhes({required this.movel,required this.atualizaPagina});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(texto: movel.titulo),
          TextoDetalhes(texto: movel.descricao),
          Container(
            margin: EdgeInsets.only(left:15, right: 15, top: 15, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formatacaoReais.format(movel.preco), style: GoogleFonts.alata()),
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
                    _adicionarItemCarrinho(ItemCarrinho(quantidade: 1, movel: movel));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  
  _adicionarItemCarrinho(ItemCarrinho item){
    Inicio.itensCarrinho.add(item);

    atualizaPagina();
  }
}
