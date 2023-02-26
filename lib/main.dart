import 'package:flutter/material.dart';
import 'navigationmain.dart';
import 'container.dart';
import 'row&colum.dart';
import 'list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Pageutama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Pageutama extends StatelessWidget {
  const Pageutama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            //ini adalah materi pertama yang itu memanggil class di sebuah file yang sama
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagepertama()));
              },
              child: Text('Menuju class pertama'),
              color: Color.fromARGB(255, 255, 7, 7),
              textColor: Color.fromARGB(255, 2, 2, 2),
            ),
            //ini adalah materi kedua yaitu memanggil class di halaman yang berbeda,
            //dengan cara mengimport file class yang ingin di tuju lalu di panggil.
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => halaman()));
              },
              child: Text('menuju page navigation'),
              color: Color.fromARGB(255, 238, 255, 0),
              textColor: Color.fromARGB(255, 17, 17, 17),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagelayout()));
              },
              child: Text('menuju page Container'),
              color: Color.fromARGB(255, 9, 255, 0),
              textColor: Color.fromARGB(255, 19, 19, 19),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagerow_colum()));
              },
              child: Text('page row & colum'),
              color: Colors.lime,
              textColor: Colors.black,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagelist()));
              },
              child: Text('menuju page list'),
              color: Color.fromARGB(255, 255, 0, 64),
              textColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

//class class yang akan di panggil button di click.
class Pagepertama extends StatelessWidget {
  const Pagepertama({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ini adalah page pertama'),
      ),
    );
  }
}
