import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/appbar_customizada.dart';
import 'package:lojinha_alura/widgets/card_detalhes.dart';

class Detalhes extends StatefulWidget {
  final Movel movel;

  Detalhes({required this.movel});

  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('atalhos/assets/imagens/${widget.movel.foto}'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBarCustomizada(
              titulo: '',
              ePaginaCarrinho: false,
            ),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const  EdgeInsets.all(16),
                height: 235,
                child: CardDetalhes(
                  atualizaPagina: atualiza,
                  movel: widget.movel,
                ),
              ),
            )));
  }

  atualiza() {
    setState(() {});
  }
}
