import 'package:flutter/material.dart';
import 'package:gustavo_dimpledialog/Views/datos_personales.dart';
import 'package:gustavo_dimpledialog/Views/mis_contactos.dart';
import 'package:gustavo_dimpledialog/Views/mis_cursos.dart';
import 'package:gustavo_dimpledialog/Views/redes_sociales.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title:const Center(
          child: Text("Simple Dialog App - Gustavo Teran "),
        ),
        elevation: 5.0,
      ),
      body: Center(
        child: FloatingActionButton(
          child: const  Icon(Icons.info),
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            _showDialog(context);
            // setState(() {});
          },
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("Seleccione una opción"),
            children: [
              ListTile(
                  title: const Text("Mis Contactos"),
                  leading: const Icon(Icons.contact_page),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListView1()));
                  }),
              ListTile(
                  title: const Text("Redes Sociales"),
                  leading:const Icon(Icons.facebook),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListView2()));
                  }),
              ListTile(
                  title:const Text("Datos Personales"),
                  leading: const Icon(Icons.person),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListView3()));
                  }),
              ListTile(
                  title: const Text("Mis Cursos"),
                  leading:const Icon(Icons.class_),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListView4()));
                  }),
            ],
          );
        });
  }
}
