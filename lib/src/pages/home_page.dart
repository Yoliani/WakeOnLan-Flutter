import 'package:flutter/material.dart';
import 'package:wake_on_lan/src/pages/models/escaner.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        title: Text('Wake On Lan'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FloatingActionButton(
              onPressed: _escanear(),
              child: Icon(Icons.play_arrow_outlined),
            ),
          )
        ],
      ),
    );
  }

  Widget _wakeonlan() {
    return Container(
      child: Text('prueba'),
    );
  }

  _escanear() {
    final addrs = new Escaner();
    addrs.escanear();
    addrs.scan();
  }
}
