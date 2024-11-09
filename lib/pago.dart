import 'package:flutter/material.dart';

class MetodoPago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medio de Pago'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: [
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.red),
            title: const Text('Tarjeta de Crédito o Débito'),
           
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.paypal, color: Colors.red),
            title: const Text('PayPal'),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.account_balance, color: Colors.red),
            title: const Text('Transferencia Bancaria'),
          ),
        ],
      ),
    );
  }
}
