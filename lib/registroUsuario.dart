import 'package:flutter/material.dart';
import 'package:flutter_application_1/iniciarsesion.dart';
import 'package:flutter_application_1/menuPrincipal.dart';
import 'package:flutter_application_1/controllers/clienteControllers.dart';
import 'package:flutter_application_1/iniciarsesion.dart'; // Importa la pantalla de inicio

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _numLicController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmarPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _registrar() async {
    if (_formKey.currentState!.validate()) {
      final nombre = _nombreController.text;
      final correo = _correoController.text;
      final numLic = _numLicController.text;
      final password = _passwordController.text;

      final cliente = Clientecontrollers();

      try {
        final response = await cliente.registrarCliente(nombre, correo, numLic, password);

        if (response.statusCode == 200) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Menu()),
          );
        } else {
          _showError("Error al registrar el cliente");
        }
      } catch (e) {
        _showError("Error de conexión al servidor");
      }
    }
  }

  void _showError(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text("Aceptar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.network(
                "https://images.vexels.com/media/users/3/135251/isolated/preview/ab893f9074d536e3e940d61f0fc62b39-los-usuarios-firman-en-rojo.png",
                width: 200,
              ),
              const Text("Empezemos", style: TextStyle(fontSize: 50, color: Colors.red)),
              Text(
                "Crea una nueva Cuenta",
                style: TextStyle(fontSize: 20, color: Colors.grey[400]),
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                controller: _nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                validator: (value) => value == null || value.isEmpty ? 'Por favor ingresa tu nombre' : null,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _correoController,
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Por favor ingresa tu correo';
                  if (!RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                    return 'Ingresa un correo válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _numLicController,
                decoration: InputDecoration(
                  labelText: 'Número de licencia',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                validator: (value) => value == null || value.isEmpty ? 'Por favor ingresa tu número de licencia' : null,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                validator: (value) => value == null || value.isEmpty ? 'Por favor ingresa tu contraseña' : null,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _confirmarPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirmar Contraseña',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Por favor confirma tu contraseña';
                  if (value != _passwordController.text) return 'Las contraseñas no coinciden';
                  return null;
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: _registrar,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text(
                  "Registrarme",
                  style: TextStyle(color: Colors.blue[900]),
                ),
              ),
              const SizedBox(height: 24.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const inicio()), // Navega a la pantalla de inicio
                  );
                },
                child: Text(
                  "¿Ya tienes cuenta? Inicia sesión",
                  style: TextStyle(color: Colors.grey[400], decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
