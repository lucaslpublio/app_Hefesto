import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Hefesto App')
        ),
        backgroundColor: Colors.blue,
      ),
      body:
      Container(
        color: Colors.lightBlueAccent, // Define a cor de fundo desejada aqui
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.work,
                size: 100,
                color: Colors.blue,
              ),
              Text(
                'Bem-vindo ao App Hefesto',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Adicione ação quando o botão for pressionado
                },
                child: Text('Iniciar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}