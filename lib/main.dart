import 'package:flutter/material.dart';

void main() => runApp(ToursApp());

class ToursApp extends StatelessWidget {
  const ToursApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tours',
      home: Destino(),
    );
  }
} //Fin clase TourApp

class Destino extends StatelessWidget {
  const Destino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tours Alejandro Aceves 6J',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: const Icon(Icons.payment, color: Colors.white),
          onPressed: () {
            // Acción de pago
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.airplanemode_active, color: Colors.white),
            onPressed: () {
              // Acción de vuelo
            },
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Acción de búsqueda
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0), // Espacio alrededor de la lista
        children: [
          _buildModernTile(
            title: 'Rio de Janeiro',
            subtitle: 'Brasil',
            icon: Icons.chat_bubble_rounded,
            color: Colors.blue.shade50,
            iconColor: Colors.blue,
          ),
          _buildModernTile(
            title: 'Seul',
            subtitle: 'Corea del Sur',
            icon: Icons.notifications_active_rounded,
            color: Colors.orange.shade50,
            iconColor: Colors.orange,
          ),
          _buildModernTile(
            title: 'Barcelona',
            subtitle: 'España',
            icon: Icons.person_rounded,
            color: Colors.green.shade50,
            iconColor: Colors.green,
          ),
          _buildModernTile(
            title: 'Los Angeles',
            subtitle: 'Estados Unidos',
            icon: Icons.settings_rounded,
            color: Colors.purple.shade50,
            iconColor: Colors.purple,
          ),
        ],
      ),
    );
  }
} //Fin clase Destino

Widget _buildModernTile({
  required String title,
  required String subtitle,
  required IconData icon,
  required Color color,
  required Color iconColor,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12.0), // Espacio entre tarjetas
    child: ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      tileColor: color, // Color de fondo suave
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Bordes redondeados modernos
      ),
      leading: CircleAvatar(
        backgroundColor: iconColor.withOpacity(0.2),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
      onTap: () {
        //Accion al Presionar
      },
    ),
  );
}