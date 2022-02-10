import 'package:flutter/material.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/widgets/indicador_botao_carrinho.dart';

class BotaoCarrinho extends StatefulWidget {
@override
  _BotaoarinhoState createState() => _BotaoarinhoState();
}

class _BotaoarinhoState extends State<BotaoCarrinho> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/carrinho').then((value) {
            return (){};
          });
        },
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            ),
          ),
          alignment: Alignment.centerRight,
          height: 40,
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: _visibilidadeIndicadorCarrinho()
        ));
  }

  _visibilidadeIndicadorCarrinho() {
    if(Inicio.itensCarrinho.length > 0) {
      return Stack(
        children: const [
          Image(
            height: 43,
            image: AssetImage('atalhos/assets/icones/carrinho.png'),
          ),
          IndicadorBotaoCarrinho()
        ],
      );
    }
    return  Image(
      height: 43,
      image: AssetImage('atalhos/assets/icones/carrinho.png'),
    );
  }
}

