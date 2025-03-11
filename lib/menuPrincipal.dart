import 'package:flutter/material.dart';
import 'package:flutter_application_1/detalles.dart';
import 'package:flutter_application_1/controllers/autosControllers.dart';
import 'package:flutter_application_1/iniciarsesion.dart'; // Asegúrate de importar la pantalla de inicio de sesión

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final AutosController autosController = AutosController();
  List<Map<String, dynamic>> autosDisponibles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _cargarAutos();
  }

  Future<void> _cargarAutos() async {
    final autos = await autosController.obtenerAutosDisponibles();
    setState(() {
      autosDisponibles = autos;
      isLoading = false;
    });
  }

  void _cerrarSesion() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const inicio()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Alquiler de Vehículos'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cdn-icons-png.freepik.com/512/10796/10796957.png",
                    height: 100,
                  ),
                  const Text(
                    'Menú',
                    style: TextStyle(color: Colors.red, fontSize: 24),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Número de licencia'),
              leading: const Icon(Icons.badge_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Cambiar contraseña'),
              leading: const Icon(Icons.lock),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Revisar alquileres'),
              leading: const Icon(Icons.search),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Cerrar Sesión',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              leading: const Icon(Icons.exit_to_app, color: Colors.red),
              onTap: _cerrarSesion,
            ),
          ],
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: autosDisponibles.length,
              itemBuilder: (context, index) {
                final auto = autosDisponibles[index];
                return Card(
                  child: ListTile(
                    title: Text("${auto['marca']} ${auto['modelo']}"),
                    subtitle: Text(
                      "Año ${auto['anio']} - ${auto['precio']}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                    leading: Image.network(
                      auto['imagen'],
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Detalles()),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
