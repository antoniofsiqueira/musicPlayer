import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Play List"),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (_, int index) {
              return ListTile(
                onTap: () => Modular.to.pushNamed("/player",
                    arguments:
                        "https://i1.sndcdn.com/artworks-000426626853-iiuvnr-t500x500.jpg"),
                leading: Image.network(
                    "https://i1.sndcdn.com/artworks-000426626853-iiuvnr-t500x500.jpg"),
                title: Text("Nome do Album"),
                subtitle: Text(
                  "Nome da Banda",
                  style: GoogleFonts.notoSans(),
                ),
                contentPadding: EdgeInsets.all(10),
              );
            }));
  }
}
