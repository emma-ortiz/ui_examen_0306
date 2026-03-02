import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9),
      appBar: AppBar(
        title: const Text('Nuestro Catálogo'),
        backgroundColor: Colors.green[600], // Color 2
        actions: const [
          Icon(Icons.search, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.filter_alt, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          // Menú de pestañas superior simulado
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('FRUTAS', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                const Text('VERDURAS', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                Column(
                  children: [
                    Text('TODO', style: TextStyle(color: Colors.green[800], fontWeight: FontWeight.bold)),
                    Container(height: 2, width: 40, color: Colors.green[800], margin: const EdgeInsets.only(top: 4)),
                  ],
                ),
              ],
            ),
          ),
          // Lista de tarjetas
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return _buildFruitCard(
                  context,
                  'Manzanas Rojas',
                  'https://raw.githubusercontent.com/emma-ortiz/imagenes-flutter/refs/heads/main/manzana.jpg',
                  '\$45.00/kg',
                  0.8,
                );
              } else {
                return _buildFruitCard(
                  context,
                  'Naranjas Jugosas',
                  'https://images.unsplash.com/photo-1547514701-42782101795e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
                  '\$30.00/kg',
                  0.5,
                );
              }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFruitCard(BuildContext context, String title, String imageUrl, String price, double stock) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/pantalla3'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.green.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 5)),
          ],
        ),
        child: Column(
          children: [
            // Parte superior verde con la imagen
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                  const Positioned(
                    top: 10, right: 10,
                    child: Icon(Icons.bookmark, color: Colors.white),
                  ),
                  const Positioned(
                    bottom: 10, left: 10,
                    child: Row(
                      children: [
                         Icon(Icons.timer, color: Colors.white, size: 16),
                         SizedBox(width: 4),
                         Text('Fresco', style: TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Parte inferior blanca con textos
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Icon(Icons.play_circle_fill, color: Colors.green[800], size: 30),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Stock: ${(stock * 100).toInt()}%', style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(price, style: TextStyle(color: Colors.green[400], fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  LinearProgressIndicator(
                    value: stock,
                    backgroundColor: Colors.grey[300],
                    color: Colors.green[800],
                    minHeight: 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}