import 'package:flutter/material.dart';

void main() => runApp(AppGameshop());

class AppGameshop extends StatelessWidget {
  const AppGameshop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gameshop',
      home: Clientes(),
    );
  }
}

class Clientes extends StatelessWidget {
  const Clientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gameshop Clientes',
          style: TextStyle(color: Color.fromARGB(255, 0, 187, 255)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        leading: const Icon(
          Icons.sports_esports,
          color: Color.fromARGB(255, 0, 225, 255),
        ),
        actions: const [
          Icon(Icons.sports_esports, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.games, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      // --- CUERPO ACTUALIZADO ---
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          crearTarjeta('Eliseo Nava', 'Gihuu', Colors.purple),
          crearTarjeta('Carlos Lozano', 'Roblox', Colors.orange),
          crearTarjeta('Sofia Salas', 'Increible', Colors.pink),
          crearTarjeta('Bryan Rivera', '14 Febrero', Colors.blueAccent),
          crearTarjeta('Usuario Nuevo', 'Activo ahora', Colors.green),
        ],
      ),
    );
  }

  // Función modificada para usar iconos con colores
  Widget crearTarjeta(String nombre, String subtitulo, Color colorPerfil) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        // El "leading" es el perfil con forma de dona
        leading: CircleAvatar(
          backgroundColor: colorPerfil,
          child: const Icon(Icons.person, color: Colors.white),
        ),
        title: Text(
          nombre,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitulo),
        // Los tres puntitos que pediste dejar
        trailing: const Icon(Icons.more_vert),
        onTap: () {
          print('Click en $nombre');
        },
      ),
    );
  } 
}                                                                                                                                                                                                                                               
