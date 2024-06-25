import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pantallas/formulario.dart';
import 'package:flutter_application_2/Pantallas/tyc.dart';
import 'package:flutter_application_2/datos/datos.dart';
import 'package:flutter_application_2/pantallas/Buscar.dart';
import 'package:flutter_application_2/pantallas/Perfil.dart';
import 'package:flutter_application_2/pantallas/lista.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _paginaActual = 0;
  final List<Widget> _paginas = [listaFeed(), paginaBuscar(), perfil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 202, 224, 236),
        title: const Text(
          'Red Social',
          style: TextStyle(color: Colors.black38),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: _paginas[_paginaActual]),
          // Añadiendo el botón para ir a los Términos y Condiciones
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tyc()),
                );
              },
              child: const Text("Términos y Condiciones"),
            ),
          ),
          // Botón de formulario adicional
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Acción cuando se presiona el botón de formulario
                // Puedes reemplazar esto con la lógica que necesites
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Formulario()),
                );
              },
              child: const Text("Ir al Formulario"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaActual,
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.percent_outlined), label: "Perfil")
        ],
      ),
      backgroundColor: Color.fromARGB(44, 90, 119, 101),
    );
  }
}

// Clase para la pantalla de formulario (debes implementarla)
class FormularioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      body: Center(
        child: const Text("Aquí va el formulario"),
      ),
    );
  }
}
