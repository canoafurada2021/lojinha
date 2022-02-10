import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextoDetalhes extends StatelessWidget {


  final String texto;

  const TextoDetalhes({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const  EdgeInsets.only(left: 14, right: 14, top: 8),
        child: Text(texto, style: GoogleFonts.alata()),
    );
  }
}
