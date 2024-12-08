// tp sur la mise en page avec un texte et des images //


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
            const Expanded(
                flex: 2,
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.center, // Change de start à center
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              'À propos des Kebabs',
              style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      height: 5,
                    ),
                  ),
                
                     Text(
                      'Ce kebab est rempli de viande tendre et épicée, accompagné de légumes frais comme la laitue croquante, le chou rouge, les tomates et les oignons doux. Le tout est enveloppé dans un pain moelleux et savoureux.',
                      style: TextStyle(fontSize: 16),
                    ),
                     SizedBox(height: 170),// espace entre les textes
                     Text(
                      'Ce wrap kebab offre une version moderne avec de la viande savoureuse dans une galette de blé tendre et grillée. Les légumes frais, herbes et sauces apportent fraîcheur et gourmandise, idéal pour un repas pratique.',
                      style: TextStyle(fontSize: 16),
                    ),
                     SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star_half, color: Colors.orange),
                        SizedBox(width: 250),
                        Text('485 Reviews'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoCard(icon: Icons.timer, label: 'Préparation :', value: '13 min'),
                        InfoCard(icon: Icons.kitchen, label: 'Cuisine :', value: '1 H 41'),
                        InfoCard(icon: Icons.restaurant, label: 'Nbr de personnes :', value: '5-7'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'Images/kebab.jpg', 
                        width: 300,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Image.asset(
                        'Images/kebab2.jpg', 
                        width: 300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoCard({
    required this.icon,
    required this.label,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[700]),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(value, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
