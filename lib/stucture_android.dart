// tp avec la barre de navigation et les widgets //


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _coeur = const Icon(Icons.favorite_border, color: Colors.white,);
  bool _likeBool = false;
  var _selectedIndex = 0;
  var _affichage = '0 : Accueil';

  void _likeThis(){
    setState(() {
      if (_likeBool){
        _coeur = Icon(Icons.favorite_border, color: Colors.white,);
        bool _likeBool = false;
      }
      else {
        _coeur = Icon(Icons.favorite, color: Colors.white,);
        bool _likeBool = true;
      }
    });
  }
  
  void _itemClique(int index){
    setState((){
      _selectedIndex = index;
      if (_selectedIndex ==0){
        _affichage = '0 : Acceuil';
      }
      else if (_selectedIndex ==1){
        _affichage = '1 : Mon Compte';
      }
      else{
        _affichage = '2 : Statistiques';
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(onPressed: _likeThis, icon: _coeur),
        ],
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_affichage),

              Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('Images/kebab.jpg', width: 250, height: 200,),
              Image.asset('Images/kebab2.jpg', width: 250, height: 200,),
            ],
          ),

              // Image.asset(
              //   'Images/kebab.jpg', width: 250, height: 200,),
              // Image.asset('Images/kebab2.jpg', width: 250, height: 200,),
            ],
          ),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,  
                ),
                child: Text('Menu de navigation'),
              ),
              ListTile(
                title: const Text('Accueil'),
                selected: _selectedIndex == 0,
                onTap: (){
                },
              ),
              ListTile(
                title: const Text('Mon Compte'),
                selected: _selectedIndex == 1,
                onTap: (){
                },             
              ),
              ListTile(
                title: const Text('Statistiques'),
                selected: _selectedIndex == 1,
                onTap: (){
                },             
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
          onPressed: (){},
          child: const Icon(Icons.star, color: Color.fromARGB(255, 255, 255, 255), size: 30),
          ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new_outlined, color: Colors.black),
              label: 'Mon Compte'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.poll, color: Colors.black),
              label: 'Statistiques'
            ),
          ],
          onTap: _itemClique,
          currentIndex: _selectedIndex,
        )
        
        
    );
  }
}