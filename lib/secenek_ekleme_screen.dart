import 'package:flutter/material.dart';
import 'package:sql_conn/sql_conn.dart';

class SecenekScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(251, 255, 207, 1),
        title: Text('Seçenek Ekleme',style: TextStyle(fontSize: 23,color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color:Color.fromRGBO(204, 144, 0, 1)),
          onPressed: () {
            Navigator.of(context).pop(); // Geri gitme işlemi
          },
        ),
      ),

      backgroundColor: Color.fromRGBO(251, 255, 207, 1),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8,vertical:16),

          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ürün Adı:',
                  style: TextStyle(fontSize: 18,color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                TextField(
                  style: TextStyle(color:Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Ürün adını girin',
                    hintStyle: TextStyle(color:Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border:OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),

                Row(
                  children: [
                    Expanded(child:
                    ElevatedButton(
                      onPressed: () {
                        // Ürün adını kaydetme işlemleri buraya eklenebilir
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                        onPrimary: Colors.white, // Buton içindeki yazı rengi
                      ),
                      child: Text('Ekle'),
                    ),
                    ),
                    SizedBox(width: 8),
                    Expanded(child:
                    ElevatedButton(
                      onPressed: () {
                        // Ürün adını güncelleme işlemleri buraya eklenebilir
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                        onPrimary: Colors.white, // Buton içindeki yazı rengi
                      ),
                      child: Text('Güncelle'),
                    ),
                    ),
                    SizedBox(width: 8),
                    Expanded(child:
                    ElevatedButton(
                      onPressed: () {
                        // Silme işlemleri buraya eklenebilir
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(204, 144, 0, 1), // Silme butonu rengi
                        onPrimary: Colors.white, // Silme butonu içindeki yazı rengi
                      ),
                      child: Text('Sil'),
                    ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alıcı Adı:',
                        style: TextStyle(fontSize: 18, color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8), // İhtiyaca göre boşluk ekleyebilirsiniz
                      TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Alıcı adını girin',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını kaydetme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Ekle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını güncelleme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Güncelle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Silme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Silme butonu rengi
                              onPrimary: Colors.white, // Silme butonu içindeki yazı rengi
                            ),
                            child: Text('Sil'),
                          ),
                          ),
                        ],
                      ),
                    ],

                  ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gideceği Sevk Yeri:',
                        style: TextStyle(fontSize: 18, color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8), // İhtiyaca göre boşluk ekleyebilirsiniz
                      TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Gideceği sevk yerini girin',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını kaydetme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Ekle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını güncelleme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Güncelle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Silme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Silme butonu rengi
                              onPrimary: Colors.white, // Silme butonu içindeki yazı rengi
                            ),
                            child: Text('Sil'),
                          ),
                          ),
                        ],
                      ),
                    ],

                  ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sevk Yeri:',
                        style: TextStyle(fontSize: 18, color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8), // İhtiyaca göre boşluk ekleyebilirsiniz
                      TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Sevk yerini girin',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını kaydetme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Ekle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını güncelleme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Güncelle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Silme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Silme butonu rengi
                              onPrimary: Colors.white, // Silme butonu içindeki yazı rengi
                            ),
                            child: Text('Sil'),
                          ),
                          ),
                        ],
                      ),
                    ],

                  ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Depo Adı:',
                        style: TextStyle(fontSize: 18, color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8), // İhtiyaca göre boşluk ekleyebilirsiniz
                      TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Depo adını girin',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını kaydetme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Ekle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını güncelleme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Güncelle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Silme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Silme butonu rengi
                              onPrimary: Colors.white, // Silme butonu içindeki yazı rengi
                            ),
                            child: Text('Sil'),
                          ),
                          ),
                        ],
                      ),
                    ],

                  ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'İhracat Limanı:',
                        style: TextStyle(fontSize: 18, color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8), // İhtiyaca göre boşluk ekleyebilirsiniz
                      TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'İhracat limanı adını girin',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını kaydetme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Ekle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını güncelleme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Güncelle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Silme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Silme butonu rengi
                              onPrimary: Colors.white, // Silme butonu içindeki yazı rengi
                            ),
                            child: Text('Sil'),
                          ),
                          ),
                        ],
                      ),
                    ],

                  ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gemi Adı:',
                        style: TextStyle(fontSize: 18, color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8), // İhtiyaca göre boşluk ekleyebilirsiniz
                      TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Gemi adını girin',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını kaydetme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Ekle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Ürün adını güncelleme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                              onPrimary: Colors.white, // Buton içindeki yazı rengi
                            ),
                            child: Text('Güncelle'),
                          ),
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          ElevatedButton(
                            onPressed: () {
                              // Silme işlemleri buraya eklenebilir
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(204, 144, 0, 1), // Silme butonu rengi
                              onPrimary: Colors.white, // Silme butonu içindeki yazı rengi
                            ),
                            child: Text('Sil'),
                          ),
                          ),
                        ],
                      ),

                    ],

                  ),

                ),
              ]
          ),
        ),
      ),
    );
  }
  
}
