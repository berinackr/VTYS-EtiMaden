import 'package:flutter/material.dart';

class OperatorHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white, // Arkaplan rengi
                  child: Icon(
                    Icons.supervisor_account,
                    color: Colors.black, // İkon rengi
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.white, // Arkaplan rengi
                  alignment: Alignment.center, // Operatör yazısını ortala
                  child: Text(
                    'Operatör',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black, // Yazı rengi
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Buton rengi
                onPrimary: Colors.white, // Yazı rengi
                minimumSize: Size(double.infinity, 50), // Buton boyutu
              ),
              onPressed: () {
                // 'Sevkler' butonuna tıklandığında yapılacak işlemler
                print('Sevkler butonuna tıklandı');
              },
              child: Text('Sevkler'),
            ),
          ],
        ),
      ),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white, // Arkaplan rengi
                  child: Icon(
                    Icons.supervisor_account,
                    color: Colors.black, // İkon rengi
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.white, // Arkaplan rengi
                  alignment: Alignment.center, // Operatör yazısını ortala
                  child: Text(
                    'Operatör',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black, // Yazı rengi
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Buton rengi
                onPrimary: Colors.white, // Yazı rengi
                minimumSize: Size(double.infinity, 50), // Buton boyutu
              ),
              onPressed: () {
                // 'Sevkler' butonuna tıklandığında yapılacak işlemler
                print('Sevkler butonuna tıklandı');
              },
              child: Text('Sevkler'),
            ),
          ],
        ),
      ),
    );
  }
}