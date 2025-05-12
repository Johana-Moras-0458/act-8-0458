import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int totalPage = 3;

  void _onScroll() {
    print('sss');
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              image: 'assets/images/ghibli01.jpg',
              title: 'Samanta',
              description:
                  '"¡No puedo expresar lo feliz que estoy con mi compra! El peluche de Totoro es aún más adorable en persona. La calidad es excelente, ¡se nota que está hecho con mucho cariño! El envío fue rapidísimo y llegó en una caja preciosa, ¡perfecto para regalar (aunque me lo quedé yo)!"'),
          makePage(
              page: 2,
              image: 'assets/images/ghibli02.jpg',
              title: 'Angel',
              description:
                  '"Soy fanático de Ghibli desde que tengo memoria, y esta tienda es un sueño hecho realidad. Compré varios peluches y cada uno es una obra de arte. Los detalles son increíbles, ¡parece que los personajes saltaron de la pantalla! El servicio al cliente fue muy amable y atento. ¡Recomendado al 100%!"'),
          makePage(
              page: 3,
              image: 'assets/images/ghibli03.jpg',
              title: 'Jessica',
              description:
                  '"Buscaba el regalo perfecto para mi sobrina, que también ama las películas de Ghibli, y encontré esta tienda. ¡Fue la mejor elección! El peluche es súper suave y abrazable, y los colores son vibrantes. Mi sobrina está encantada con su nuevo amigo. ¡Gracias por traer un poco de magia de Ghibli a nuestras vidas!"'),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        page.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '/' + totalPage.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ]),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text(
                            '0.4',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '(2300)',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            description,
                            style: TextStyle(
                                color: Colors.white.withOpacity(.7),
                                height: 1.9,
                                fontSize: 12),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'VER MAS',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
