import 'package:flutter/material.dart';

void main() => runApp(Misiconos());

class Misiconos extends StatelessWidget {
  const Misiconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Aldo Saucedo De Luna",
            style: const TextStyle(
              color: Color(0xff430c68),
              fontSize: 20,
            ),
          ), // Título del AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texto personalizado con colores
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'Aldo ',
                      style: TextStyle(color: Colors.blue), // Color para "Aldo"
                    ),
                    TextSpan(
                      text: 'Daniel ',
                      style:
                          TextStyle(color: Colors.green), // Color para "Daniel"
                    ),
                    TextSpan(
                      text: 'Saucedo ',
                      style: TextStyle(
                          color: Colors.orange), // Color para "Saucedo"
                    ),
                    TextSpan(
                      text: 'De Luna ',
                      style: TextStyle(
                          color: Colors.purple), // Color para "De Luna"
                    ),
                    TextSpan(
                      text: '22308051281310',
                      style:
                          TextStyle(color: Colors.red), // Color para el número
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Espacio entre el texto y los íconos
              IconWithSubtitleGrid(), // Grid de íconos
            ],
          ),
        ),
      ),
    );
  }
}

class IconWithSubtitleGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Primera fila con 3 iconos distintos
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconWithSubtitle(
              icon: Icons.work,
              subtitle: 'Trabajo',
              iconColor: Colors.blue, // Color del ícono
              textColor: Colors.blue, // Color del texto
            ),
            IconWithSubtitle(
              icon: Icons.school,
              subtitle: 'Escuela',
              iconColor: Colors.green, // Color del ícono
              textColor: Colors.green, // Color del texto
            ),
            IconWithSubtitle(
              icon: Icons.fitness_center,
              subtitle: 'Gimnasio',
              iconColor: Colors.orange, // Color del ícono
              textColor: Colors.orange, // Color del texto
            ),
          ],
        ),
        SizedBox(height: 20), // Espacio entre las filas
        // Segunda fila con 3 iconos distintos
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconWithSubtitle(
              icon: Icons.music_note,
              subtitle: 'Música',
              iconColor: Colors.purple, // Color del ícono
              textColor: Colors.purple, // Color del texto
            ),
            IconWithSubtitle(
              icon: Icons.movie,
              subtitle: 'Películas',
              iconColor: Colors.red, // Color del ícono
              textColor: Colors.red, // Color del texto
            ),
            IconWithSubtitle(
              icon: Icons.restaurant,
              subtitle: 'Restaurante',
              iconColor: Colors.teal, // Color del ícono
              textColor: Colors.teal, // Color del texto
            ),
          ],
        ),
      ],
    );
  }
}

class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color iconColor; // Color del ícono
  final Color textColor; // Color del texto

  IconWithSubtitle({
    required this.icon,
    required this.subtitle,
    this.iconColor = Colors.black, // Color predeterminado del ícono
    this.textColor = Colors.black, // Color predeterminado del texto
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: iconColor), // Aplicar color al ícono
        SizedBox(height: 8), // Espacio entre el icono y el subtítulo
        Text(
          subtitle,
          style: TextStyle(color: textColor), // Aplicar color al texto
        ),
      ],
    );
  }
}
