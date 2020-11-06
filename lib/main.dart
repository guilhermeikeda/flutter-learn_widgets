import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title:
          'Ikeda App', // Utilizado pelo sistema operacional para trocar as "tasks"
      home: LoginWidget()));
}

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material é um pedaço de papel conceitual onde a UI vai aparecer
    return Material(
      child: Center(
        child: Column(
          children: <Widget>[
            Text('Faça o login para acessar seus dados',
                style: Theme.of(context).primaryTextTheme.headline4),
            Column(
              children: <Widget>[LoginFormWidget()],
            )
          ],
        ),
      ),
    );
  }
}

class LoginFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Nome de usuário',
                hintText: 'meu@email.com')),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        // Row é um linear layout horizontal
        children: <Widget>[
          // Tipo de itens na lista
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(
              child: title), // Expande o filho para ocupar o espaço disponível
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null, // Desabilita o botão
          )
        ],
      ),
    );
  }
}
