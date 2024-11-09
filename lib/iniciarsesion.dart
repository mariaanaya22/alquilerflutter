import 'package:flutter/material.dart';
import 'package:flutter_application_1/menuPrincipal.dart';
import 'package:flutter_application_1/registroUsuario.dart';


class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
          padding: EdgeInsets.all(16.6),
          child: Column(
            
  
            children: [
           
              Image.network("https://png.pngtree.com/png-vector/20240309/ourmid/pngtree-black-super-car-png-image_11921537.png", width: 400,),
                 Text("Bienvenido", 
                 style: TextStyle(fontSize: 50,  color: Colors.red)),
              Text(
                "Inicia sesion para continuar" ,
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
                  "Iniciar sesion",
                     
                    
      
                  style: TextStyle(color: Colors.white,),
                ),
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
             
                ),
              ),
       SizedBox(height: 10),
       Row(
  mainAxisAlignment: MainAxisAlignment.center, 
  children: [
    Text("¿Olvidaste tu contraseña?, "),
    GestureDetector(
      onTap: () { },
      child: Text(
        "Recuperar",
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ],
),
       
Row(
  mainAxisAlignment: MainAxisAlignment.center, 
  children: [
    Text("¿No tienes cuenta?, "),
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => registro()) 
        );
      },
      child: Text(
        "Regístrate",
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold, 
        ),
      ),
    ),
  ],
)

            ],
          )),
    );
  }
}
