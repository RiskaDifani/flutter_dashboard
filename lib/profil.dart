import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text('Profil'),
          backgroundColor:Colors.green[700] ,
          elevation: 7,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Icon(Icons.verified_user, color: Colors.white,)
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/img/man.png'),
                  ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left:24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Stefan', style: TextStyle(fontSize: 28,color: Colors.white,
                      fontWeight:FontWeight.bold)
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on, color: Colors.white70, size: 17,)
                        ],
                      ),
                      ),
                    ],
                  ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}