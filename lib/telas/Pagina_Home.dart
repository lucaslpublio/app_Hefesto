import 'package:flutter/material.dart';
import '/tema/Theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hefesto/telas/Pagina_Trabalhos.dart';
import 'package:hefesto/telas/Perfil.dart';

class Pagina_Home extends StatefulWidget {
  @override
  _Pagina_HomeState createState() => _Pagina_HomeState();
}

class _Pagina_HomeState extends State<Pagina_Home> {
  int _selectedIndex = 0;

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
    return Scaffold(
      backgroundColor: Color(0xFFFFFAFA),
      body: SingleChildScrollView(
        child: Container(
        child: Column(
          children: [
            SizedBox(height: 50.0), // Separa as informações na tela
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Alinha à esquerda
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 38,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Pesquise',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ), // Cor azul para o texto do rótulo
                  contentPadding: EdgeInsets.only(left: 10.0),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey, // Cor cinza claro para o ícone
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCard(
                  icon: Icons.home,
                  imagePath  : 'assets/paisagem.png',
                  title: 'Jardinagem',
                ),
                CategoryCard(
                  icon: Icons.build,
                  imagePath  : 'assets/16638-manicure-aperfeicoamento-de-cutilagem-camilacamacho.jpg',
                  title: 'Manicure',
                ),
                CategoryCard(
                  icon: Icons.directions_car,
                  imagePath  : 'assets/paisagem.png',
                  title: 'Locomoção',
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCardMaior(
                  icon: Icons.home,
                  title: 'PROMOÇÕES',
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: Row(
                children: [
                  Text(
                    'Categorias:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCardCategoriasIMG(
                  icon: Icons.home,
                  title: 'Florista',
                  imagePath: 'assets/trabalho_geral.png'
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCardCategoriasIMG(
                    icon: Icons.home,
                    title: 'Pedreiro',
                    imagePath: 'assets/retrato-de-verao-de-uma-jovem-feliz-no-campo.jpg'
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCardCategoriasIMG(
                    icon: Icons.home,
                    title: 'Mecãnico',
                    imagePath: 'assets/Login-amico.png'
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCardCategoriasIMG(
                    icon: Icons.home,
                    title: 'Florista',
                    imagePath: 'assets/trabalho_geral.png'
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: Row(
                children: [
                  Text(
                      'Recomendados:',
                      style: titulo_menor
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCardCategoriasIMG(
                    icon: Icons.home,
                    title: 'Florista',
                    imagePath: 'assets/trabalho_geral.png'
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCardCategoriasIMG(
                    icon: Icons.home,
                    title: 'Florista',
                    imagePath: 'assets/trabalho_geral.png'
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCardCategoriasIMG(
                    icon: Icons.home,
                    title: 'Jardinagem',
                    imagePath: 'assets/jardinagem.jpeg'
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 60.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  aspectRatio: 16 / 9, // Ajuste a proporção de acordo com suas necessidades
                  // checar ta dando problema, n ta mudando o tamanho
                  viewportFraction: 0.8, // Ajuste a fração da viewport conforme necessário
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Texto normal $i',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Descubra',
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

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String imagePath;

  CategoryCard({required this.icon, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      color: Colors.transparent, // Remova a cor de fundo
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );


  }
}

class CategoryCardMaior extends StatelessWidget {
  final IconData icon;
  final String title;

  CategoryCardMaior({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      color: Colors.transparent, // Remova a cor de fundo
      child: Container(
        width: 360,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage('assets/trabalho_geral.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(height: 8),
            Text(
              'PROMOCOES?',
              style: texto,
            ),
          ],
        ),
      ),
    );


  }
}



class CategoryCardMaiorSemBackground extends StatelessWidget {
  final IconData icon;
  final String title;

  CategoryCardMaiorSemBackground({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Container(
        width: 360,
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Para redefinir sua senha, informe o usuário'
                'ou e-mail cadastrado na sua conta e lhe'
                'enviaremos um link com as instruções', // Corrigi a acentuação do texto
                style: TextStyle(
                    fontSize: 16
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCardCategoriasIMG extends StatelessWidget {
  final IconData icon;
  final String title;
  final String imagePath;

  CategoryCardCategoriasIMG({required this.icon, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      color: Colors.transparent, // Remova a cor de fundo
      child: Container(
        width: 360,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Text(
              title,
              style: texto,
            ),
          ],
        ),
      ),
    );
  }
}
