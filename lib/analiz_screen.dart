import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  DateTime? selectedDate1;
  DateTime? selectedDate2;
  String? selectedAnaliz;

  Future<void> _selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate1 ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate1) {
      setState(() {
        selectedDate1 = DateTime(picked.year, picked.month, picked.day);
      });
    }
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate2 ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate2) {
      setState(() {
        selectedDate2 = DateTime(picked.year, picked.month, picked.day);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(251, 255, 207, 1),
        title: Text('Analiz',style: TextStyle(fontSize: 23,color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color:Color.fromRGBO(204, 144, 0, 1)),
          onPressed: () {
            Navigator.of(context).pop(); // Geri gitme işlemi
          },
        ),
      ),
      backgroundColor: Color.fromRGBO(251, 255, 207, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => _selectDate1(context),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                onPrimary: Colors.white, // Buton içindeki yazı rengi
              ),
              child: Text('Tarih 1 Seç'),
            ),
            SizedBox(height: 16.0),
            selectedDate1 != null
                ? Text('Tarih 1: ${selectedDate1!.day}/${selectedDate1!.month}/${selectedDate1!.year}')
                : SizedBox(),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _selectDate2(context),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                onPrimary: Colors.white, // Buton içindeki yazı rengi
              ),
              child: Text('Tarih 2 Seç'),
            ),
            SizedBox(height: 16.0),
            selectedDate2 != null
                ? Text('Tarih 2: ${selectedDate2!.day}/${selectedDate2!.month}/${selectedDate2!.year}')
                : SizedBox(),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              hint: Text('Analiz Seçiniz'),
              value: selectedAnaliz,
              items: [
                'analiz1',
                'analiz2',
                // Diğer analiz seçeneklerini ekleyebilirsiniz
              ].map((analiz) {
                return DropdownMenuItem<String>(
                  value: analiz,
                  child: Text(analiz),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedAnaliz = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Analiz butonuna basıldığında analiz sayfasına geçiş yapılır
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnalizSayfasi(
                      tarih1: selectedDate1,
                      tarih2: selectedDate2,
                      selectedAnaliz: selectedAnaliz,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                onPrimary: Colors.white, // Buton içindeki yazı rengi
              ),
              child: Text('Analiz Yap'),
            ),
          ],
        ),
      ),
    );
  }
}

class AnalizSayfasi extends StatelessWidget {
  final DateTime? tarih1;
  final DateTime? tarih2;
  final String? selectedAnaliz;

  const AnalizSayfasi({
    Key? key,
    required this.tarih1,
    required this.tarih2,
    required this.selectedAnaliz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(251, 255, 207, 1),
        title: Text('Analiz Sonuçları',style: TextStyle(fontSize: 23,color: Color.fromRGBO(204, 144, 0, 1), fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color:Color.fromRGBO(204, 144, 0, 1)),
          onPressed: () {
            Navigator.of(context).pop(); // Geri gitme işlemi
          },
        ),
      ),
      backgroundColor: Color.fromRGBO(251, 255, 207, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Analiz Sonuçları'),
            SizedBox(height: 16.0),
            tarih1 != null
                ? Text('Tarih 1: ${tarih1!.day}/${tarih1!.month}/${tarih1!.year}')
                : SizedBox(),
            tarih2 != null
                ? Text('Tarih 2: ${tarih2!.day}/${tarih2!.month}/${tarih2!.year}')
                : SizedBox(),
            selectedAnaliz != null
                ? Text('Seçilen Analiz: $selectedAnaliz')
                : SizedBox(),
            // Buraya analiz sonuçlarını gösteren widget'ları ekleyebilirsiniz
          ],
        ),
      ),
    );
  }
}
