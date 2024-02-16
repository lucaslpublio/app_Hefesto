import 'package:flutter/material.dart';
import '/tema/Theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hefesto/telas/Pagina_Trabalhos.dart';
import 'package:hefesto/telas/Pagina_Home.dart';

class Perfil extends StatefulWidget {
  @override
  _Perfil_State createState() => _Perfil_State();
}

class _Perfil_State extends State<Perfil> {
  int _selectedIndex = 2;

  // Define a lista de páginas a serem exibidas para cada guia.
  final List<Widget> _pages = [
    Pagina_Home(),
    Pagina_Trabalhos(),
    Perfil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navegar para a página correspondente ao índice selecionado
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _pages[_selectedIndex]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Adicione a estrutura do seu aplicativo aqui
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Seção da foto de perfil
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/retrato-do-estudio-do-homem-moreno-confiante.jpg'),
              ),
            ),

            // Nome do usuário
            Text(
              'Seu Nome',
              style: titulo_maior
            ),

            SizedBox(height: 40.0),

            // Cards com informações
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              elevation: 8, // Ajuste o valor conforme necessário
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40), // Ajuste o valor conforme necessário
              ),
              child: ListTile(
                leading: Icon(Icons.payment),
                title: Text(
                  'Pagamento',
                  style: texto_dark_pequeno
                ),
                contentPadding: EdgeInsets.all(16), // Ajuste o espaçamento interno conforme necessário
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              elevation: 8, // Ajuste o valor conforme necessário
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40), // Ajuste o valor conforme necessário
              ),
              child: ListTile(
                leading: Icon(Icons.help),
                title: Text(
                  'Ajuda',
                  style: TextStyle(
                    fontSize: 18, // Ajuste o tamanho da fonte conforme necessário
                    fontWeight: FontWeight.bold,
                  ),
                ),
                contentPadding: EdgeInsets.all(16), // Ajuste o espaçamento interno conforme necessário
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              elevation: 8, // Ajuste o valor conforme necessário
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40), // Ajuste o valor conforme necessário
              ),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Configurações',
                  style: TextStyle(
                    fontSize: 18, // Ajuste o tamanho da fonte conforme necessário
                    fontWeight: FontWeight.bold,
                  ),
                ),
                contentPadding: EdgeInsets.all(16), // Ajuste o espaçamento interno conforme necessário
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              elevation: 8, // Ajuste o valor conforme necessário
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40), // Ajuste o valor conforme necessário
              ),
              child: ListTile(
                leading: Icon(Icons.history),
                title: Text(
                  'Histórico',
                  style: TextStyle(
                    fontSize: 18, // Ajuste o tamanho da fonte conforme necessário
                    fontWeight: FontWeight.bold,
                  ),
                ),
                contentPadding: EdgeInsets.all(16), // Ajuste o espaçamento interno conforme necessário
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Trabalhos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}