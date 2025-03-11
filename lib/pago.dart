import 'package:flutter/material.dart';

class MetodoPago extends StatelessWidget {
  const MetodoPago({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medio de Pago'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: const [
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.red),
            title: Text('Tarjeta de Crédito o Débito'),
           
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.paypal, color: Colors.red),
            title: Text('PayPal'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_balance, color: Colors.red),
            title: Text('Transferencia Bancaria'),
          ),
        ],
      ),
    );
  }
}
