import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('alquiler de vehiculos'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Se ajusta la imagen con BoxFit.contain para evitar distorsión
                  Image.network(
                    "https://cdn-icons-png.freepik.com/512/10796/10796957.png",
              
                    height: 100, // Ajusta la altura de la imagen para que se vea bien
                  ),
                  const Text(
                    'Menu',
                    style: TextStyle(color: Colors.red, fontSize: 24),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Datos personales'),
              onTap: () {
                // Acción al pulsar la opción
              },
            ),
             ListTile(
              title: const Text('Cambiar contraseña'),
              onTap: () {
                // Acción al pulsar la opción
              },
            ),
             ListTile(
              title: const Text('revisar alquileres'),
              onTap: () {
                // Acción al pulsar la opción
              },
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text('Contenido del portafolio'),
      ),
    );
  }
}
