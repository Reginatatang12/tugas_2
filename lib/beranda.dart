import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("Beranda"),
        ]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              print('Click Start');
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "Regina Tatang",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountEmail: new Text(
                "Regina.tatang@undiksha.ac.id",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C5603AQHn70r8BHk-pg/profile-displayphoto-shrink_200_200/0/1597147556027?e=1620864000&v=beta&t=6AsZDEblUeZpW0CY-6Gw4MtQF_r9lEi6RdeWXWygqHs'),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/appimages/bg.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),
            new ListTile(
              title: new Text('Notifications'),
              trailing: new Icon(Icons.notifications_none),
            ),
            new ListTile(
                title: new Text('Keranjang Saya'),
                trailing: new Icon(Icons.shopping_basket_outlined)),
            new ListTile(
              title: new Text('Akun'),
              trailing: new Icon(Icons.verified_user),
            ),
            Divider(
              height: 2,
            ),
            new ListTile(
              title: new Text('Setting'),
              trailing: new Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          Image.asset(
            "assets/appimages/kamoya.jpeg",
            fit: BoxFit.fill,
          ),
          Container(
            color: Colors.yellowAccent,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saldo anda : Rp.500.000',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Points : 152.000',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                )),
                Icon(
                  Icons.local_offer,
                  color: Colors.red[500],
                ),
                Text('Paket Hemat 10.000'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Theme.of(context).dividerColor))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.food_bank_outlined, color: Colors.orange[200]),
                    Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Makanan',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.local_drink_rounded, color: Colors.orange[200]),
                    Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Minuman',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.fastfood, color: Colors.orange[200]),
                    Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Camilan',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
