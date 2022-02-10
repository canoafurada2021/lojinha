import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
import 'package:lojinha_alura/paginas/carrinho.dart';
import 'package:lojinha_alura/paginas/detalhes.dart';
import 'package:lojinha_alura/widgets/grid_produtos.dart';
import 'package:lojinha_alura/widgets/paleta_cores.dart';

import 'widgets/appbar_customizada.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/carrinho': (context) => Carrinho()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: PaletaCores().lilas,

        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 20),
          headline2: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          headline3: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          headline4: TextStyle(fontSize:20, fontWeight: FontWeight.w200, color: Colors.black)
        )
      ),
      home: Inicio(),
    );
  }
}
class Inicio extends StatelessWidget {
  static List<ItemCarrinho> itensCarrinho = [];



  final List moveis = [
    {
      'titulo': 'Mesa',
      'preco': 300,
      'foto': 'movel1.jpg',
      'descricao':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'
    },
    {
      'titulo': 'Cadeira',
      'preco': 120,
      'foto': 'movel2.jpg',
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Cinza",
      "preco": 800,
      "foto": "movel4.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Mesa de cabeceira",
      "preco": 400,
      "foto": "movel5.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Jogo de Cama",
      "preco": 250,
      "foto": "movel6.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Branco",
      "preco": 900,
      "foto": "movel7.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBarCustomizada(
          titulo: 'Lojinha da Alura',
          ePaginaCarrinho: false,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 30,right:20, top: 10, bottom: 10
                    ),
                    child: const Divider(),
                  ),
                ),
                const Text('Produtos'),
                Expanded(
                  child: Container(
                    margin:const  EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                    child: Divider(),
                  ),
                ),
              ],
            ),
            Flexible(
              child: GridProdutos(
                atualiza: atualiza,
                moveis: moveis,
              ),
            ),
          ],
        ));
  }
  void atualiza() {


    }
  }

