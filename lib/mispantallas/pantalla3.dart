import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9),
      appBar: AppBar(
        title: const Text('Detalle de Fruta'),
        backgroundColor: Colors.green[400], // Color 3
        actions: const [
          Icon(Icons.favorite_border, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.share, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Contenedor principal de la imagen
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.green[300]!, width: 2),
                  image: const DecorationImage(
                    image: NetworkImage('https://raw.githubusercontent.com/emma-ortiz/imagenes-flutter/refs/heads/main/manzana.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Icon(Icons.play_circle_outline, color: Colors.white.withOpacity(0.8), size: 60),
                ),
              ),
              const SizedBox(height: 30),
              
              const Text(
                'MANZANAS ROJAS PREMIUM',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2E7D32)),
              ),
              const SizedBox(height: 15),
              
              const Text(
                'Deliciosas manzanas rojas recién cosechadas. Perfectas para un snack saludable, repostería o jugos frescos. Alto contenido en fibra y vitaminas.',
                style: TextStyle(color: Colors.black54, height: 1.5),
              ),
              const SizedBox(height: 30),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Disponibilidad: 80%', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('\$45.00', style: TextStyle(color: Colors.green[400], fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: 0.8,
                backgroundColor: Colors.grey[300],
                color: Colors.green[800],
                minHeight: 8,
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.local_shipping, color: Colors.grey, size: 16),
                  SizedBox(width: 5),
                  Text('Envío disponible', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              
              const SizedBox(height: 50),
              // Botón inferior
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('¡Añadido al carrito!')),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    side: BorderSide(color: Colors.green[800]!, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'AGREGAR AL CARRITO',
                    style: TextStyle(
                      color: Colors.green[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}