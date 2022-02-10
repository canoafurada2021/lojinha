import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {

  final String titulo;
 final bool ePaginaCarrinho;
 AppBarCustomizada({Key? key, required this.titulo,required this.ePaginaCarrinho}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme:const  IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true,
      title: Text(titulo, style:  const TextStyle(
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
