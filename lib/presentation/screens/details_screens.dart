import 'package:flutter/material.dart';

class DetailsScreens extends StatelessWidget {
  static const name = 'detail-screen';

  const DetailsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Detalle de Pantalla')),
        elevation: 2,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Image.network('https://images.pexels.com/photos/5710585/pexels-photo-5710585.jpeg'),
    );
  }
}
