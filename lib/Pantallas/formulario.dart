import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Formulario()),
            );
          },
          child: const Text('Ir al Formulario'),
        ),
      ),
    );
  }
}

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> estadoFormulario = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(20),
        child: Form(
          key: estadoFormulario,
          child: Column(
            children: [
              Container(
                child: TextFormField(
                  validator: (value) {
                    if (!value!.contains("@")) {
                      return "El correo no es valido";
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: "Correo electrónico"),
                ),
              ),
              Container(
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value!.length < 6) {
                      return "Debe tener mínimo 6 caracteres";
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: "Contraseña"),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    if (estadoFormulario.currentState!.validate()) {
                      print("Excelente");
                    } else {
                      print("Error!");
                    }
                  },
                  child: const Text("Validar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
