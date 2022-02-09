import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TituloGridProdutos extends StatelessWidget {
  final String titulo;

  TituloGridProdutos({required this.titulo});

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
