import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TituloGridProdutos extends StatelessWidget {
  final String titulo;

  const TituloGridProdutos({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(
        titulo,
        style: GoogleFonts.alata(
          color: Colors.white,
        ),
      ),
    );
  }
}
