//import 'dart:html';

import 'package:bilgi/sonuc.dart';
import 'package:flutter/material.dart';
import 'sorular.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.indigo,
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

const dogruIconu = Icon(Icons.check, color: Colors.green);
const yanlisIconu = Icon(Icons.clear, color: Colors.red);

class Soru {
  String? soruMetni;
  bool? soruYaniti;

  Soru({@required this.soruMetni, @required this.soruYaniti});
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];
  Sorular soru_1 = Sorular();
  List<int> yanitlar = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 30),
        Container(
            child: Column(
          children: [
            Container(
              child: Image.network(
                'https://i0.wp.com/cooldigitalphotography.com/wp-content/uploads/2015/08/Question-mark-light-5.jpg?resize=522%2C369',
                height: 240,
              ),
            ),
            SizedBox(height:10),
            Text(
              "Bilgi Yarışması",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        )),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                soru_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          child: Icon(
                            Icons.thumb_down,
                            size: 25.0,
                          ),
                          onPressed: () {
                            setState(() {
                              if (secimler.length < 10) {
                                if (soru_1.getSoruYaniti() == false) {
                                  yanitlar.add(1);
                                  secimler.add(dogruIconu);
                                } else {
                                  yanitlar.add(0);
                                  secimler.add(yanlisIconu);
                                }
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SonucSayfasi(yanitlar:yanitlar,)),
                                );
                              }
                              soru_1.sonrakiSoru();
                            });
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          child: Icon(Icons.thumb_up, size: 25.0),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          onPressed: () {
                            setState(() {
                              if (secimler.length < 10) {
                                if (soru_1.getSoruYaniti() == true) {
                                  yanitlar.add(1);
                                  secimler.add(dogruIconu);
                                } else {
                                  yanitlar.add(0);
                                  secimler.add(yanlisIconu);
                                }
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SonucSayfasi(yanitlar:yanitlar)),
                                );
                              }
                              soru_1.sonrakiSoru();
                            });
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
