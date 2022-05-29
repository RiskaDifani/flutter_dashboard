import 'package:flutter/material.dart';
import 'package:flutter_dashboard/header_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text("Dashboard Laima"),
      ),
      backgroundColor: Colors.green[100],
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Profil"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Dashboard"),
                onTap: () {Navigator.pop(context);},
              ),
              ListTile(
                leading: const Icon(Icons.tty),
                title: const Text("Lapor"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log out"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget> [
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.fireplace, size: 70, color: Colors.red),
                    Text("DAMKAR", style: TextStyle(fontSize: 17.0,))
                  ],
                ),
              ),
            ),
          ),
          //Menu 2
           Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.emoji_transportation, size: 70, color: Colors.blue),
                    Text("Ambulance", style: TextStyle(fontSize: 17.0,))
                  ],
                ),
              ),
            ),
          ),
          //Menu 3
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.military_tech, size: 70, color: Colors.green),
                    Text("Police", style: TextStyle(fontSize: 17.0,))
                  ],
                ),
              ),
            ),
          ),
          //Menu 4
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.emoji_people, size: 70, color: Colors.orange),
                    Text("BPBD", style: TextStyle(fontSize: 17.0,))
                  ],
                ),
              ),
            ),
          ),
          //Menu 5
           Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.emoji_objects, size: 70, color: Colors.yellowAccent),
                    Text("PLN", style: TextStyle(fontSize: 17.0,))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}