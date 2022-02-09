import 'package:flutter/material.dart';

class ImagemElementoGrid extends StatelessWidget {
  final String imagem;

  ImagemElementoGrid({required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Image(
            fit: BoxFit.cover,
            image: AssetImage(
              'atalhos/assets/imagens/$imagem',
            )));
  }
}
