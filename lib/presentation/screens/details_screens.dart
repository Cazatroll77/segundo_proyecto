import 'package:flutter/material.dart';

class DetailsScreens extends StatelessWidget {
  static const name = 'detail-screen';

  const DetailsScreens({super.key});

  Widget buildSection(String title, List<String> items) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_right,
                            size: 20,
                            color: Colors.black54,
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Detalle de Hoja de Vida'),
        elevation: 2,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://images.pexels.com/photos/5710585/pexels-photo-5710585.jpeg',
              fit: BoxFit.cover,
              height: 220,
              width: double.infinity,
            ),

            // Sección Habilidades Técnicas
            buildSection("Habilidades Técnicas", [
              "Flutter & Dart",
              "Bases de datos SQL",
              "Git & GitHub",
              "Firebase",
              "Diseño UI/UX básico",
            ]),

            // Sección Idiomas
            buildSection("Idiomas", [
              "Español - Nativo",
              "Inglés - Intermedio",
              "Francés - Básico",
            ]),

            // Sección Intereses
            buildSection("Intereses", [
              "Desarrollo de apps móviles",
              "Inteligencia Artificial",
              "Viajar y conocer culturas",
              "Música y fotografía",
            ]),

            // Sección Proyectos
            buildSection("Proyectos Destacados", [
              "App de tareas con notificaciones push",
              "Juego 2D simple en Flutter",
              "Sistema de inventarios en Firebase",
            ]),

            // Sección Certificaciones
            buildSection("Certificaciones", [
              "Curso Flutter - Udemy",
              "Google Cloud Fundamentals",
              "Diplomado en Desarrollo Web",
            ]),
          ],
        ),
      ),
    );
  }
}
