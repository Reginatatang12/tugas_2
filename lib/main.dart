import 'package:flutter/material.dart';

import './beranda.dart' as Beranda;
import './produklist.dart' as Listproduk;
import './about.dart' as About;
import 'ui/home.dart';

void main() {
  runApp(new MaterialApp(
    title: "tab baru",
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppstate createState() => _MyAppstate();
}

class _MyAppstate extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new TabBarView(controller: _controller, children: <Widget>[
        new Beranda.Beranda(),
        new Listproduk.Produklist(),
        new About.Aboutapp(),
      ]),
      bottomNavigationBar: new Material(
        color: Colors.black,
        child: new TabBar(controller: _controller, tabs: <Widget>[
          new Tab(icon: new Icon(Icons.home)),
          new Tab(icon: new Icon(Icons.list)),
          new Tab(icon: new Icon(Icons.info)),
        ]),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tambahkan Daftar Menu',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Home(),
    );
  }
}
