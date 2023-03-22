import 'package:flutter/material.dart';

class SonucSayfasi extends StatelessWidget {
  final List<int> yanitlar;
  const SonucSayfasi({Key? key, required this.yanitlar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int yanlisSayisi = 0;
    int dogruSayisi = 0;
    dogruSayisi = yanitlar.where((element) => element == 1).length;
    yanlisSayisi = yanitlar.where((element) => element == 0).length;

    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo,
            body: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Image.network(
                    'https://i0.wp.com/cooldigitalphotography.com/wp-content/uploads/2015/08/Question-mark-light-5.jpg?resize=522%2C369',
                    height: 240,
                  ),
                ),
                Text(
                  "Bilgi Yarışması",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Doğru Sayısı: ${dogruSayisi.toString()}",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Yanlış Sayısı: ${yanlisSayisi.toString()}",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Puan : ${dogruSayisi * 10.toInt()}",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ))));
  }
}
