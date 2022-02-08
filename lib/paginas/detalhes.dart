import 'package:flutter/material.dart';


class Detalhes extends StatelessWidget {
  const Detalhes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Detalhes"),
      ),
      body: TextButton(
        child: Text("Bem vindo ao carrinho") ,
        onPressed: () {
          Navigator.pushNamed(context, '/carrinho');
        },
      ),
    );
  }
}
