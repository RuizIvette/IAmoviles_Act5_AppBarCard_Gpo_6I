import 'package:flutter/material.dart';

void main() => runApp(AppJugueteria());

class AppJugueteria extends StatelessWidget {
  const AppJugueteria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jugueteria',
      home: Juguete(),
    );
  }
}//fin clase AppJugueteria

class Juguete extends StatelessWidget {
  const Juguete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Juguetería Ivette'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 125, 97, 173),
        actions: [
          Icon(Icons.more),
          Icon(Icons.add_to_photos),

        ],
      ),
      drawer: Drawer(),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 320,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFCE93D8), // Morado claro
              Color(0xFF4A148C), // Morado oscuro
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Imagen de Piolín corregida
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/RuizIvette/IAmoviles_Act5_AppBarCard_Gpo_6I/refs/heads/main/avatarr.png',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ivette Ruiz',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Gerente de ventas',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.9),
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
    );
  }
}//fin clase Jueguete