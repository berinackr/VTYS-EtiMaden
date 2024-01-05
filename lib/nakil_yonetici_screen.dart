import 'package:flutter/material.dart';
//import 'package:etimaden/yurtdisi.dart'; // Bu import doğru olmalı

class nakilPage extends StatefulWidget {
  @override
  _nakilPageState createState() => _nakilPageState();
}

class _nakilPageState extends State<nakilPage> {
  final TextEditingController genelMudurlukController = TextEditingController();
  final TextEditingController invoiceNoController = TextEditingController();
  final TextEditingController nakilNumarasiController = TextEditingController();
  final TextEditingController paletTipiController = TextEditingController();
  final TextEditingController paletAgirligiController = TextEditingController();
  final TextEditingController sevkYeriGidecegiController = TextEditingController();
  final TextEditingController cutOffDateController = TextEditingController();
  final TextEditingController hazirlikTarihiController = TextEditingController();
  final TextEditingController nakliyeciController = TextEditingController();
  final TextEditingController nakilMiktariController = TextEditingController();
  final TextEditingController gidenNakilMiktariController = TextEditingController();
  final TextEditingController kalanNakilMiktariController = TextEditingController();
  final TextEditingController aliciAdiController = TextEditingController();
  final TextEditingController ulkeController = TextEditingController();
  final TextEditingController urunAdiController = TextEditingController();
  final TextEditingController urunTaneBoyutuController = TextEditingController();
  final TextEditingController agirlikController = TextEditingController();
  final TextEditingController torbaTuruController = TextEditingController();
  final TextEditingController torbaTipiController = TextEditingController();
  final TextEditingController sapController = TextEditingController();
  final TextEditingController ekAmbalaj1Controller = TextEditingController();
  final TextEditingController ekAmbalaj2Controller = TextEditingController();
  final TextEditingController ekAmbalaj3Controller = TextEditingController();
  final TextEditingController genelMarkalamaController = TextEditingController();
  final TextEditingController ozelMarkalamaController = TextEditingController();
  final TextEditingController husus1Controller = TextEditingController();
  final TextEditingController husus2Controller = TextEditingController();
  final TextEditingController resultController = TextEditingController();


  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Color.fromRGBO(251, 255, 207, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              buildTextWithFormField('Teslimat No:', invoiceNoController),
              buildTextWithFormField('Genel Müdürlük:', genelMudurlukController),
              buildTextWithFormField('Nakil Numarası:', nakilNumarasiController),
              buildTextWithFormField('Palet tipi:', paletTipiController),
              buildTextWithFormField('Palet ağırlığı:', paletAgirligiController),
              buildTextWithFormField('Sevk yeri gideceği:', sevkYeriGidecegiController),
              buildFormFieldWithButton('Cut off', 'Cut off', cutOffDateController),
              buildFormFieldWithButton('Hazırlık Tarihi', 'Hazırlık Tarihi', hazirlikTarihiController),
              buildTextWithFormField('Nakliyeci:', nakliyeciController),
              buildTextWithFormField('Nakil miktarı:', nakilMiktariController),
              buildTextWithFormField('Giden Nakil miktar:', gidenNakilMiktariController),
              buildTextWithFormField('Kalan Nakil Miktar:', kalanNakilMiktariController),
              buildTextWithFormField('Alıcı Adı:', aliciAdiController),
              buildTextWithFormField('Ülke:', ulkeController),
              buildTextWithFormField('Ürün adı:', urunAdiController),
              buildTextWithFormField('Ürün tane boyutu:', urunTaneBoyutuController),
              buildTextWithFormField('Ağırlık:', agirlikController),
              buildTextWithFormField('Torba Türü:', torbaTuruController),
              buildTextWithFormField('Torba Tipi:', torbaTipiController),
              buildTextWithFormField('Sap:', sapController),
              buildTextWithFormField('Ek ambalaj 1:', ekAmbalaj1Controller),
              buildTextWithFormField('Ek ambalaj 2:', ekAmbalaj2Controller),
              buildTextWithFormField('Ek ambalaj 3:', ekAmbalaj3Controller),
              buildTextWithFormField('Genel Markalama:', genelMarkalamaController),
              buildTextWithFormField('Özel markalama:', ozelMarkalamaController),
              buildTextWithFormField('Hususlar 1:', husus1Controller),
              buildTextWithFormField('Hususlar 2:', husus2Controller),
              buildTextWithFormField('Sonuç:', resultController),
              Image.asset(
                "assets/images/eti_logo.png",
                width: 150,
                height: 150,
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextWithFormField(String labelText, TextEditingController controller) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Color.fromRGBO(204, 144, 0, 1)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(204, 144, 0, 1), width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                labelText: labelText,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildFormFieldWithButton(String labelText, String buttonText, TextEditingController controller) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(251, 255, 207, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  buttonText,
                  style: TextStyle(color: Color.fromRGBO(204, 144, 0, 1)),
                ),
              ),
            ),
          ),
        ),
        if (selectedDate != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
              style: TextStyle(color: Color.fromRGBO(204, 144, 0, 1)),
            ),
          ),
      ],
    );
  }


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        cutOffDateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }
}

class OperatorPageData {
  final String selectedProduct;
  final DateTime? selectedDate;

  OperatorPageData(this.selectedProduct, this.selectedDate);
}