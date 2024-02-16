import 'package:flutter/material.dart';

class Pagina_Trabalhos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trabalhos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            TrabalhoCard(
              title: 'Trabalho 1',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec egestas turpis. Ut finibus diam ligula, quis feugiat ante sollicitudin id. Integer justo mauris, consectetur.',
              imagePath: 'assets/feliz-bonito-mulher-jovem-posar-camera-em-parque-cidade.jpg', // Substitua pelo caminho da sua imagem
            ),
            TrabalhoCard(
              title: 'Trabalho 2',
              description: 'Descrição do Trabalho 2.',
              imagePath: 'assets/retrato-de-verao-de-uma-jovem-feliz-no-campo.jpg', // Substitua pelo caminho da sua imagem
            ),
            TrabalhoCard(
              title: 'Trabalho 3',
              description: 'Descrição do Trabalho 3.',
              imagePath: 'assets/retrato-do-estudio-do-homem-moreno-confiante.jpg', // Substitua pelo caminho da sua imagem
            ),
          ],
        ),
      ),
    );
  }
}

class TrabalhoCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  TrabalhoCard({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}