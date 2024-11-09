import 'package:flutter/material.dart';
import 'package:flutter_application_1/menuPrincipal.dart';

// ignore: camel_case_types
class registro extends StatefulWidget {
  const registro({super.key});

  @override
  State<registro> createState() => _registroState();
}

// ignore: camel_case_types
class _registroState extends State<registro> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(16.6),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://images.vexels.com/media/users/3/135251/isolated/preview/ab893f9074d536e3e940d61f0fc62b39-los-usuarios-firman-en-rojo.png", width: 200,
              ),
              Text("Empezemos",
                  style: TextStyle(
                      fontSize: 50,
            
                      color: Colors.red)),
              Text(
                "Crea una nueva Cuenta",
                style: TextStyle(fontSize: 20, color: Colors.grey[400]),
              ),
              SizedBox(height: 24.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Correo electronico',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Confirmar Contraseña',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                   Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Menu()) 
        );
                  print("email: ${_emailController.text} ");
                  print("password: ${_passwordController.text} ");
                },
                child: Text(
                  "Registrarme",
                  style: TextStyle(
                    color: Colors.blue[900],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                "¿No tienes una cuenta?  inicia sesion",
                style: TextStyle(color: Colors.grey[400]),
              ),
            ],
          )),
    );
  }
}
