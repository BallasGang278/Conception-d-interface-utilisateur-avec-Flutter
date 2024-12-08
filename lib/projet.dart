
import 'package:flutter/material.dart';

void main() {
  runApp(const MonApp());
}

class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hajime no ippo',
      home: const PremierEcran(),
    );
  }
}

// Premier écran
// class PremierEcran extends StatelessWidget {
//   const PremierEcran({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Image de fond en pleine page
//           Positioned.fill(
//             child: Image.asset(
//               'Assets/Images/ippo.jpg', // Image pour le premier écran
//               fit: BoxFit.cover,
//             ),
//           ),
//           // Bande transparente avec texte
//           Align(
//             alignment: Alignment.topCenter,
//             child: Container(
//               color: Colors.black.withOpacity(0.0),
//               padding: const EdgeInsets.all(20),
//               child: const Text(
//                 "Bienvenue sur ma page !",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           // Bouton centré
//           Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 // Navigation vers le deuxième écran
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const DeuxiemeEcran()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//               ),
//               child: const Text(
//                 "Clique ici",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class PremierEcran extends StatelessWidget {
  const PremierEcran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond en pleine page
          Positioned.fill(
            child: Image.asset(
              'Assets/Images/ippo.jpg', // Image pour le premier écran
              fit: BoxFit.cover,
            ),
          ),
          // Bande transparente avec texte
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.black.withOpacity(0.0),
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Bienvenue sur ma page !",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Bouton en bas
          Align(
            alignment: Alignment.bottomCenter, // Position en bas
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0), // Marges en bas
              child: ElevatedButton(
                onPressed: () {
                  // Navigation vers le deuxième écran
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DeuxiemeEcran()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text(
                  "Clique ici",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class DeuxiemeEcran extends StatelessWidget {
  const DeuxiemeEcran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond pour le deuxième écran
          Positioned.fill(
            child: Image.network(
              'https://pbs.twimg.com/media/E7Hm8eyXoAIKtIR.jpg:large', // Image pour le deuxième écran
              fit: BoxFit.cover,
            ),
          ),
          // Bande transparente avec texte
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.black.withOpacity(0.0),
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Bienvenue sur ma deuxième page !",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Bouton en bas de la page
          Align(
            alignment: Alignment.bottomCenter, // Position en bas
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0), // Marges en bas
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Retour au premier écran
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text(
                  "Clique ici pour revenir en arrière",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
