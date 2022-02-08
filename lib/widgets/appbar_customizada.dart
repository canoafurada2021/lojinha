import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {

  final String titulo;
 final bool ePaginaCarrinho;
 AppBarCustomizada({required this.titulo,required this.ePaginaCarrinho});


  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true,
      title: Text(titulo, style: TextStyle(
        color: Colors.black
      ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: <Widget>[
    _mudarPaginaCarrinho(ePaginaCarrinho),
      ],
    );
  }
  _mudarPaginaCarrinho(bool ePaginaCarrinho) {
    if(ePaginaCarrinho) return Container();
    return BotaoCarrinho();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
