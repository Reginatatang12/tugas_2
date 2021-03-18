import 'package:flutter/material.dart';
import 'package:layout_2/detail.dart';

void main() => runApp(MaterialApp());

class Produklist extends StatefulWidget {
  @override
  _ProduklistState createState() => _ProduklistState();
}

class _ProduklistState extends State<Produklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Produk Listing')),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Ayam Songkem (Paha)",
                    deskripsi: "Ayam bumbu hitam madura + sambal merah",
                    harga: 18000,
                    gambar: "ayam.jpeg",
                    star: 4,
                  ),
                ));
              },
              child: ProdukBox(
                  nama: "Ayam songkem (Paha)",
                  deskripsi:
                      "Ayam bumbu hitam yang dipadukan dengan sambal merah ",
                  harga: 18000,
                  gambar: "ayam.jpeg",
                  star: 4),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Ayam Songkem (dada)",
                    deskripsi: "Ayam bumbu hitam madura + sambal merah",
                    harga: 18000,
                    gambar: "ayam.jpeg",
                    star: 4,
                  ),
                ));
              },
              child: ProdukBox(
                nama: "Ayam songkem (dada)",
                deskripsi:
                    "Ayam bumbu hitam yang dipadukan dengan sambal merah ",
                harga: 18000,
                gambar: "ayam.jpeg",
                star: 4,
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Bebek Songkem (dada)",
                    deskripsi: "Bebek bumbu hitam madura + sambal merah",
                    harga: 18000,
                    gambar: "bebek aja.jpeg",
                    star: 5,
                  ),
                ));
              },
              child: ProdukBox(
                nama: "Bebek songkem (dada)",
                deskripsi:
                    "Bebek bumbu hitam yang dipadukan dengan sambal merah ",
                harga: 18000,
                gambar: "bebek aja.jpeg",
                star: 5,
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Bebek Songkem (paha) ",
                    deskripsi: "Bebek goreng bumbu hitam + sambal merah",
                    harga: 18000,
                    gambar: "bebek aja.jpeg",
                    star: 5,
                  ),
                ));
              },
              child: ProdukBox(
                  nama: "Bebek Songkem (paha)",
                  deskripsi:
                      "bebek goreng dipadukan dengan bumbu hitam dan sambal merah",
                  harga: 18000,
                  gambar: "bebek aja.jpeg",
                  star: 5),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "PakMur ",
                    deskripsi: "Paket murah Ati ampla + Nasi putih",
                    harga: 10000,
                    gambar: "atiampla.jpeg",
                    star: 4,
                  ),
                ));
              },
              child: ProdukBox(
                nama: "PakMur",
                deskripsi:
                    "Paket Ati ampla bumbu songkem & sambel merah + nasi ",
                harga: 10000,
                gambar: "aatiampla.jpeg",
                star: 4,
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Es kopi susu gula aren",
                    deskripsi: "Es kopi susu ditambah gula aren",
                    harga: 13000,
                    gambar: "kopisusu.jpeg",
                    star: 5,
                  ),
                ));
              },
              child: ProdukBox(
                nama: "Kopi susu Gula aren ",
                deskripsi: "Es kopi susu ditambah gula aren",
                harga: 13000,
                gambar: "kopisusu.jpeg",
                star: 5,
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Es coklat",
                    deskripsi: "Es coklat kamoya",
                    harga: 13000,
                    gambar: "coklat.jpeg",
                    star: 3,
                  ),
                ));
              },
              child: ProdukBox(
                nama: "Es coklat ",
                deskripsi: "Es coklat kamoya",
                harga: 13000,
                gambar: "coklat.jpeg",
                star: 3,
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    nama: "Sandwich",
                    deskripsi: "Roti lapis isi daging dan selada",
                    harga: 15000,
                    gambar: "camilan.jpg",
                    star: 4,
                  ),
                ));
              },
              child: ProdukBox(
                nama: "Sandwich",
                deskripsi: "Roti lapis isi daging, tomat dan selada",
                harga: 15000,
                gambar: "camilan.jpg",
                star: 4,
              ),
            ),
          ],
        ));
  }
}

class ProdukBox extends StatelessWidget {
  ProdukBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; 1 < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }

    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + gambar,
                width: 150,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "price: " + this.harga.toString(),
                      style: TextStyle(color: Colors.yellowAccent[700]),
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: children,
                        )
                      ],
                    )
                  ],
                ),
              ))
            ])));
  }
}
