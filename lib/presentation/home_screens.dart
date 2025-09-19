import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/details_screens.dart';
import 'package:go_router/go_router.dart';

class HomeScreens extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hoja de Vida"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Presentación",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Mi nombre es Arian Andres Mosquera Perea, "
                      "soy una persona apasionada por la tecnología y el desarrollo de software. "
                      "Me considero responsable, proactivo y con gran disposición para aprender.",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "📧 Correo: arian@gmail.com",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "📱 Celular: +57 321 456 7890",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "📍 Ubicación: Apartadó, Antioquia",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Experiencia",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "• Desarrollador Flutter en TechSolutions (2023 - 2024)",
                    ),
                    Text("• Soporte técnico en InfoGlobal (2022 - 2023)"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Estudios",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("• Ingeniería de Sistemas - Universidad del Valle"),
                    Text("• Curso de Flutter y Dart - Udemy"),
                    Text("• Diplomado en Desarrollo de Software - SENA"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            FilledButton.tonal(
              onPressed: () {
                context.goNamed(DetailsScreens.name);
              },
              child: const Text("Ver detalle"),
            ),
          ],
        ),
      ),
    );
  }
}
