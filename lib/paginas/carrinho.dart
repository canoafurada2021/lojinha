import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/widgets/lista_carrinho.dart';

import '../widgets/appbar_customizada.dart';

class Carrinho extends StatefulWidget {
  @override
  _CarrinhoState createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    int valorTotal = _calcularTotal();
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: GoogleFonts.alata(fontSize: 20),
            ),
            Text(
              formatacaoReais.format(valorTotal),
              style: GoogleFonts.alata(fontSize: 20),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: 'Carrinho',
        ePaginaCarrinho: true,
      ),
      body: _construirTela(),
    );
  }

  void atualiza() {
    setState(() {});
  }

  int _calcularTotal() {
    if (Inicio.itensCarrinho.isNotEmpty) {
      return Inicio.itensCarrinho
          .map((item) => item.movel.preco * item.quantidade)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }
    return 0;
  }

  Widget _construirTela() {
    if (Inicio.itensCarrinho.isNotEmpty) {
      return ListaCarrinho(
        atualiza: atualiza,
      );
    } else {
      return Container(
          height:double.infinity,
          alignment: Alignment.center,
          child: Text("Nenhum item no carrinho :("));
    }
  }
}
