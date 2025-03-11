import 'dart:convert';
import 'package:http/http.dart' as http;

class Clientecontrollers {
  final String baseUrl = 'https://alquiler-autos-db.onrender.com/api/clientes';


  Future<http.Response> registrarCliente(
      String nombre, String correo, String numLic, String password) async {
    final url = Uri.parse(baseUrl); 
    try {
      final Map<String, dynamic> requestBody = {
        'nombre': nombre,
        'correo': correo,
        'numLic': numLic,
        'password': password,
      };

      print('Enviando datos: ${jsonEncode(requestBody)}'); 

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );

      print('Código de estado: ${response.statusCode}');
      print('Respuesta del servidor: ${response.body}');

      if (response.statusCode == 201 || response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Error en el registro: ${response.body}');
      }
    } catch (e) {
      print('Error en la petición HTTP: $e');
      throw Exception('Error de conexión al servidor');
    }
  }

  /// Inicia sesión con un cliente registrado
  Future<Map<String, dynamic>> loginCliente(
      String correo, String password) async {
    final url = Uri.parse('$baseUrl/login');

    try {
      final Map<String, dynamic> requestBody = {
        'correo': correo,
        'password': password,
      };

      print('Datos de login enviados: ${jsonEncode(requestBody)}');

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );

      print('Código de estado: ${response.statusCode}');
      print('Respuesta del servidor: ${response.body}');

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = jsonDecode(response.body);
        return {
          'success': true,
          'mensaje': responseData['mensaje'] ?? 'Inicio de sesión exitoso',
          'cliente': responseData['cliente'],
        };
      } else {
        return {
          'success': false,
          'mensaje': 'Error: ${response.statusCode} - ${response.body}',
        };
      }
    } catch (e) {
      print('Error en la petición HTTP: $e');
      return {'success': false, 'mensaje': 'Error de conexión al servidor'};
    }
  }
}
