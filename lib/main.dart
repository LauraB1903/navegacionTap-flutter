import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegacion Tab',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            title: const Text('Navegación Tab'),
            bottom: const TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.newspaper), text: 'Noticias'),
                Tab(icon: Icon(Icons.message), text: 'Mensajes'),
                Tab(icon: Icon(Icons.person), text: 'Perfil'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              NoticiasTab(),
              MensajesTab(),
              PerfilTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class NoticiasTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Noticias'),
    );
  }
}

class MensajesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Mensajes'),
    );
  }
}

class PerfilTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Perfil'),
    );
  }
}