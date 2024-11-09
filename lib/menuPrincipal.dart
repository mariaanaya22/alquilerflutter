import 'package:flutter/material.dart';
import 'package:flutter_application_1/detalles.dart';

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
                 
                  Image.network(
                    "https://cdn-icons-png.freepik.com/512/10796/10796957.png",
              
                    height: 100, 
                  ),
                  const Text(
                    'Menu',
                    style: TextStyle(color: Colors.red, fontSize: 24),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Numero de licencia'),
              leading: Icon(Icons.badge_rounded),
              onTap: () {
                // Acción al pulsar la opción
              },
            ),
             ListTile(
              title: const Text('Cambiar contraseña'),
              leading: Icon(Icons.lock),
              onTap: () {
                // Acción al pulsar la opción
              },
            ),
             ListTile(
              title: const Text('revisar alquileres'),
              leading: Icon(Icons.search),
              onTap: () {
                // Acción al pulsar la opción
              },
            ),
          ],
        ),
      ),

      body: ListView(
      
    children : [ 
      
    
           Card(child: ListTile(
            
            title: Text("Toyota corrolla " ),
            subtitle: Text("Año 2022", style:TextStyle(color:Colors.grey) ),

     
            leading: Image.network("https://images.vexels.com/media/users/3/258908/isolated/preview/405070adc9b39a8331bb7d0a6a08a905-transporte-de-coche-deportivo-rojo.png"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
               Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detalles()) 
        );

            },
          ),
          ),
         Card(child: ListTile(
            
            title: Text("ford mustaing " ),
            subtitle: Text("Año 2023-99.99/dia", style:TextStyle(color:Colors.grey) ),

     
            leading: Image.network("https://images.vexels.com/media/users/3/258908/isolated/preview/405070adc9b39a8331bb7d0a6a08a905-transporte-de-coche-deportivo-rojo.png"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detalles2()) 
        );

            },
          ),
          ),
           Card(child: ListTile(
            
            title: Text("nissan senta" ),
            subtitle: Text("Año 2021-89.9/dia", style:TextStyle(color:Colors.grey) ),

     
            leading: Image.network("https://images.vexels.com/media/users/3/258908/isolated/preview/405070adc9b39a8331bb7d0a6a08a905-transporte-de-coche-deportivo-rojo.png"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
               Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detalles3()) 
        );

            },
          ),
          ),
          Card(child: ListTile(
            
            title: Text("chevrolet camaro " ),
            subtitle: Text("Año 202-100/dia", style:TextStyle(color:Colors.grey) ),

     
            leading: Image.network("https://images.vexels.com/media/users/3/258908/isolated/preview/405070adc9b39a8331bb7d0a6a08a905-transporte-de-coche-deportivo-rojo.png"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
               Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detalles4()) 
        );

            },
          ),
          ),
    ]
        ),
      );
    
  }
}
