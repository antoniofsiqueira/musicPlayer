import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'player_controller.dart';

class PlayerPage extends StatefulWidget {
  final String url;
  const PlayerPage({Key key, this.url}) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends ModularState<PlayerPage, PlayerController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Musica: ${widget.url}"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          buildImageHeader(),
          buildNameMusic(),
          buildProgressBar(),
          buildButtons(),
        ],
      ),
    );
  }

  Container buildImageHeader() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 350,
        decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
                image: NetworkImage(widget.url), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[700], blurRadius: 15, offset: Offset(2, 5))
            ]),
      ),
    );
  }

  buildNameMusic() {
    return Column(
      children: [
        Container(
          child: Text(
            "Freak on a leach",
            style: GoogleFonts.ptSansCaption(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Text(
            "Korn",
            style: GoogleFonts.ptSansCaption(fontSize: 15),
          ),
        ),
      ],
    );
  }

  buildProgressBar() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 35, right: 35, top: 30),
          child: LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 35, right: 35, top: 5),
          child: Row(
            children: [
              Text("0:15"),
              Expanded(child: Container()),
              Text("2:00"),
            ],
          ),
        )
      ],
    );
  }

  buildButtons() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          FlatButton(
              onPressed: () {}, child: Icon(Icons.fast_rewind, size: 50)),
          Expanded(
            child: FlatButton(
                onPressed: () {},
                child: Icon(Icons.play_circle_outline, size: 50)),
          ),
          FlatButton(
              onPressed: () {}, child: Icon(Icons.fast_forward, size: 50)),
        ],
      ),
    );
  }
}
