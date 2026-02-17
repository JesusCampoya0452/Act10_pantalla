import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LavanderiaPage(),
    );
  }
}

class LavanderiaPage extends StatelessWidget {
  const LavanderiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // CONFIGURACIÓN DEL ENCABEZADO (AppBar)
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        // Icono a la izquierda
        leading: const Icon(Icons.menu, color: Colors.white),
        // Título centrado
        title: const Text(
          'LAVANDERÍA',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        // Icono(s) a la derecha
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.account_circle_outlined, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Servicios Disponibles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            
            // Lista de servicios con imágenes de internet
            _itemServicio(
              "https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/refs/heads/main/lavado.png", 
              "Lavado por Carga"
            ),
            _itemServicio(
              "https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/refs/heads/main/Secado.PNG", 
              "Secado Rápido"
            ),
            _itemServicio(
              "https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/refs/heads/main/tintoreria.png", 
              "Tintoreria"
            ),
          ],
        ),
      ),
    );
  }

  // Widget para construir cada fila de servicio
  Widget _itemServicio(String url, String titulo) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          // Imagen circular desde internet
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              url,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
          // Nombre del servicio
          Expanded(
            child: Text(
              titulo,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
          ),
          // Botón no funcional
          ElevatedButton(
            onPressed: null, // Deshabilitado
            style: ElevatedButton.styleFrom(
              disabledBackgroundColor: Colors.blue.shade100,
            ),
            child: const Text('Info'),
          ),
        ],
      ),
    );
  }
}