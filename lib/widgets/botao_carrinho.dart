import 'package:flutter/material.dart';

class BotaoCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.pushNamed(context, '/carrinho');
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
      child: const Image(
        height: 43,
        image: AssetImage('atalhos/assets/icones/carrinho.png'),
      ),
    ));
  }
}
