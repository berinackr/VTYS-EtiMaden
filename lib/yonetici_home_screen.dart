import 'package:etimaden/Secenek_Ekleme_Screen.dart';
import 'package:etimaden/analiz_screen.dart';
import 'package:etimaden/sevkler_screen.dart';
import 'package:flutter/material.dart';
import 'package:etimaden/sevkler_operator_screen.dart';
import 'package:etimaden/analiz_screen.dart';
class YoneticiHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.supervisor_account, // İstenilen ikon
                  size: 24.0,
                ),
                SizedBox(width: 5.0), // İkon ile yazı arasına bir boşluk ekleyelim
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.white, // Kutucuğun rengi
                  alignment: Alignment.center, // Yönetici yazısını ortala
                  child: Text(
                    'Yönetici',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black, // Yazı rengi
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Buton rengi
                onPrimary: Colors.white, // Yazı rengi
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SevklerScreenYonetici()),
                );
                print('Sevkler butonuna tıklandı');
              },
              child: Text('Sevkler'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Buton rengi
                onPrimary: Colors.white, // Yazı rengi
              ),
              onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => AnaSayfa()),
                 );
                print('Analizler butonuna tıklandı');
              },
              child: Text('Analizler'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Buton rengi
                onPrimary: Colors.white, // Yazı rengi
              ),
              onPressed: () {
               // Navigator.push(
               //   context,
               //   MaterialPageRoute(builder: (context) => SecenekScreen()),
               // );
                print('Kullanıcılar butonuna tıklandı');
              },
              child: Text('Kullanıcılar'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Buton rengi
                onPrimary: Colors.white, // Yazı rengi
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecenekScreen()),
                );
                print('Seçenek Ekleme butonuna tıklandı');
              },
              child: Text('Seçenek Ekleme'),
            ),
          ],
        ),
      ),
    );
  }

}