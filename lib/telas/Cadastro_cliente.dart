import '/tema/Theme.dart';
import 'package:flutter/material.dart';

class Cadastro_Cliente extends StatelessWidget {
  final nomeController = TextEditingController();
  final enderecoController = TextEditingController();
  final cpfController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  final confirmacaoSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            // Sua decoração personalizada aqui
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/Login-amico.png",
                  width: 150.0,
                  height: 150.0,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Cadastro',
                  style: titulo_maior,
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  controller: nomeController,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: enderecoController,
                  decoration: InputDecoration(
                    labelText: 'Endereço',
                    icon: Icon(Icons.home),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: cpfController,
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    icon: Icon(Icons.confirmation_number),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: senhaController,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: confirmacaoSenhaController,
                  decoration: InputDecoration(
                    labelText: 'Confirmação de Senha',
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),

                ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), // Forma circular
                    padding: EdgeInsets.all(20), // Ajuste o tamanho conforme necessário
                    primary: Colors.blue, // Cor de fundo do botão
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white, // Cor do ícone (seta para a direita)
                    size: 30, // Tamanho do ícone
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}