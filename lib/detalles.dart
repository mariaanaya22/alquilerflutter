import 'package:flutter/material.dart';
import 'package:flutter_application_1/pago.dart';

class Detalles extends StatefulWidget {
  const Detalles({super.key});

  @override
  State<Detalles> createState() => _DetallesState();
}

class _DetallesState extends State<Detalles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles del vehículo"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Image.network(
            "https://images.vexels.com/media/users/3/258908/isolated/preview/405070adc9b39a8331bb7d0a6a08a905-transporte-de-coche-deportivo-rojo.png",
            height: 280,
            width: 280,
          ),
          const SizedBox(height: 20),
          const Text("Marca: Toyota", style: TextStyle(fontWeight: FontWeight.bold)),
          const Text("Modelo: Camry"),
          const Text("Año: 2021"),
          const Text("Disponibilidad: Disponible", style: TextStyle(color: Colors.green)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
                 Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MetodoPago()) 
        );
              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text(
              "alquilar Auto",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class Detalles2 extends StatefulWidget {
  const Detalles2({super.key});

  @override
  State<Detalles2> createState() => _Detalles2State();
}

class _Detalles2State extends State<Detalles2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles del vehículo"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Image.network(
            "https://images.vexels.com/media/users/3/258908/isolated/preview/405070adc9b39a8331bb7d0a6a08a905-transporte-de-coche-deportivo-rojo.png",
            height: 280,
            width: 280,
          ),
          const SizedBox(height: 20),
          const Text("Marca: ford", style: TextStyle(fontWeight: FontWeight.bold)),
          const Text("Modelo: mustaing"),
          const Text("Año: 2023"),
          const Text("Disponibilidad: Disponible", style: TextStyle(color: Colors.green)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
                 Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MetodoPago()) 
        );
              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text(
              "alquilar Auto",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}



class Detalles3 extends StatefulWidget {
  const Detalles3({super.key});

  @override
  State<Detalles3> createState() => _Detalles3State();
}

class _Detalles3State extends State<Detalles3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles del vehículo"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Image.network(
            "https://images.vexels.com/media/users/3/258908/isolated/preview/405070adc9b39a8331bb7d0a6a08a905-transporte-de-coche-deportivo-rojo.png",
            height: 280,
            width: 280,
          ),
          const SizedBox(height: 20),
          const Text("Marca: nissan", style: TextStyle(fontWeight: FontWeight.bold)),
          const Text("Modelo: senta"),
          const Text("Año: 2021"),
          const Text("Disponibilidad: Disponible", style: TextStyle(color: Colors.green)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
                 Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MetodoPago()) 
        );
              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text(
              "alquilar Auto",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class Detalles4 extends StatefulWidget {
  const Detalles4({super.key});

  @override
  State<Detalles4> createState() => _Detalles4State();
}

class _Detalles4State extends State<Detalles4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles del vehículo"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Image.network(
            "https://images.vexels.com/media/users/3/258908/isolated/preview/405070adc9b39a8331bb7d0a6a08a905-transporte-de-coche-deportivo-rojo.png",
            height: 280,
            width: 280,
          ),
          const SizedBox(height: 20),
          const Text("Marca: chevrolet", style: TextStyle(fontWeight: FontWeight.bold)),
          const Text("Modelo: camro"),
          const Text("Año: 2022"),
          const Text("Disponibilidad: Disponible", style: TextStyle(color: Colors.green)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
                 Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MetodoPago()) 
        );
              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text(
              "alquilar Auto",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
