import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 246, 255),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180), // altura maior
        child: AppBar(
          backgroundColor: Color(0xFF8CAFE6),
          elevation: 0,
          automaticallyImplyLeading: false, // remove padrão

          flexibleSpace: SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    icon: Image.asset(
                      'assets/imgs/menu.png',
                      width: 60,
                      height: 60,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
                Positioned(
                  top: 55,
                  left: 10,
                  child: IconButton(
                    icon: Image.asset(
                      'assets/imgs/voltar.png',
                      width: 40,
                      height: 40,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/logo.png',
                            width: 350,
                            height: 350,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        spacing: 20.0,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0, left: 20.0),
            child: Text(
              "Categorias",
              style: TextStyle(
                fontSize: 30.0,
                color: Color.fromARGB(255, 23, 85, 181),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Text(
              "Favoritos",
              style: TextStyle(
                fontSize: 30.0,
                color: Color.fromARGB(255, 23, 85, 181),
              ),
            ),
          ),
          Text(""),
        ],
      ),
    );
  }
}
