import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/details_screens.dart';
import 'package:go_router/go_router.dart';

class HomeScreens extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pagina inicial bienvenidos',
            style: const TextStyle(color: Colors.green),
          ),
          const SizedBox(height: 10),
          const CircularProgressIndicator(strokeWidth: 3),
          const SizedBox(height: 20),
          FilledButton.tonal(
            onPressed: () {
              context.goNamed(DetailsScreens.name);
            },
            child: Text('Ver detalle'),
          ),
        ],
      ),
    );
  }
}
