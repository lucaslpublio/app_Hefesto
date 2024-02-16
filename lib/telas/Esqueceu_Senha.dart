import 'package:flutter/material.dart';
import 'package:hefesto/telas/Cadastro_prestador.dart';
import 'package:hefesto/telas/Pagina_Home.dart';
import '/tema/Theme.dart';
import 'package:hefesto/telas/Cadastro_cliente.dart';
import 'package:hefesto/telas/Pagina_Home.dart';

class EsqueceuSenhaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Imagem de tamanho médio
              Image.asset(
                "assets/Login-amico.png",
                width: 150.0,
                height: 150.0,
              ),
              SizedBox(height: 20.0),

              Text(
                'Esqueci Minha Senha',
                style: titulo_menor,
              ),

              SizedBox(height: 20.0),


              CategoryCardMaiorSemBackground(
                icon: Icons.home,
                title: 'Tirulo',
              ),


              SizedBox(height: 20.0),

              // Formulário com campos de email e senha
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Insira o Email da conta',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 40.0),


              // Botão "Entrar"
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pagina_Home()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Cor de fundo do botão
                  foregroundColor: Colors.white, // Cor do texto do botão
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 150.0),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),

              SizedBox(height: 10.0), // Separa as informações na tela

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}