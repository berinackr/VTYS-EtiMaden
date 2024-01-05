import 'package:flutter/material.dart';
//import 'package:etimaden/yurtdisi.dart'; // Bu import doğru olmalı
//import 'nakil.dart';
class YurtdisiPage extends StatefulWidget {
  @override
  _YurtdisiPageState createState() => _YurtdisiPageState();
}

class _YurtdisiPageState extends State<YurtdisiPage> {
  final TextEditingController ardiyesizDateController = TextEditingController();
  final TextEditingController bosalimDateController = TextEditingController();
  final TextEditingController limanagirisDateController = TextEditingController();
  final TextEditingController cutoffDateController = TextEditingController();
  final TextEditingController hazirlikDateController = TextEditingController();

  final TextEditingController invoiceNoController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  final TextEditingController salesDocumentNoController = TextEditingController();
  final TextEditingController recipientNameController = TextEditingController();
  final TextEditingController nakliyeciController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController outgoingQuantityCotroller = TextEditingController();
  final TextEditingController resultController = TextEditingController();
  final TextEditingController husus1Controller = TextEditingController();
  final TextEditingController husus2Controller = TextEditingController();
  final TextEditingController genelMudurlukController = TextEditingController();
  final TextEditingController dosyaNumarasiController = TextEditingController();
  final TextEditingController paletlemeTipiController = TextEditingController();
  final TextEditingController paletTipiController = TextEditingController();
  final TextEditingController paletAgirligiController = TextEditingController();
  final TextEditingController sevkYeriGidecegiController = TextEditingController();
  final TextEditingController sevkYeriController = TextEditingController();
  final TextEditingController depoAdiController = TextEditingController();
  final TextEditingController gemiAdiController = TextEditingController();
  final TextEditingController bookingNoController = TextEditingController();
  final TextEditingController ihracatLimaniController = TextEditingController();
  final TextEditingController gozetmenController = TextEditingController();
  final TextEditingController konteynerController = TextEditingController();
  final TextEditingController konteynermiktariController = TextEditingController();
  final TextEditingController gidenkonyeynerController = TextEditingController();
  final TextEditingController kalankonteynerController = TextEditingController();
  final TextEditingController gidenKonteynerMiktariController = TextEditingController();
  final TextEditingController kalanKonteynerMiktariController = TextEditingController();
  final TextEditingController konteynerTipiController = TextEditingController();
  final TextEditingController konteynerDeposuController = TextEditingController();
  final TextEditingController konteynerAlimTarihiController = TextEditingController();
  final TextEditingController konteynerGirisLimaniController = TextEditingController();
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

  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color.fromRGBO(251, 255, 207, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              buildTextWithFormField('Teslimat No:', invoiceNoController),
              buildTextWithFormField('Genel Müdürlük:', genelMudurlukController),
              buildTextWithFormField('Dosya Numarası:', dosyaNumarasiController),
              buildTextWithFormField('Paletleme tipi:', paletlemeTipiController),
              buildTextWithFormField('Palet tipi:', paletTipiController),
              buildTextWithFormField('Palet ağırlığı:', paletAgirligiController),
              buildTextWithFormField('Sevk yeri gideceği:', sevkYeriGidecegiController),
              buildTextWithFormField('Sevk Yeri:', sevkYeriController),
              buildTextWithFormField('Depo adı:', depoAdiController),
              buildTextWithFormField('Gemi adı:', gemiAdiController),
              buildTextWithFormField('Satış Belge Numarası:', salesDocumentNoController),
              buildTextWithFormField('Booking No:', bookingNoController),
              buildTextWithFormField('İhracat limani:', ihracatLimaniController),
              buildTextWithFormField('Gözetmen:', gozetmenController),
              buildFormFieldWithButton('Ardiyesiz giriş tarihi', 'Ardiyesiz giriş tarihi', ardiyesizDateController),
              buildFormFieldWithButton('Boş Alım', 'Boş Alım', bosalimDateController),
              buildFormFieldWithButton('Limana Giriş', 'Limana Giriş', limanagirisDateController),
              buildFormFieldWithButton('Cut off', 'Cut off', cutoffDateController),
              buildFormFieldWithButton('Hazırlık tarihi', 'Hazırlık tarihi', hazirlikDateController),
              buildTextWithFormField('Nakliyeci:', nakliyeciController),
              buildTextWithFormField('Konteyner sayısı:', konteynerController),
              buildTextWithFormField('Konteyner miktarı:', konteynermiktariController),
              buildTextWithFormField('Giden konteynar:', gidenkonyeynerController),
              buildTextWithFormField('Kalan Konteyner:', kalankonteynerController),
              buildTextWithFormField('Giden konteyner miktar:', gidenKonteynerMiktariController),
              buildTextWithFormField('Kalan Konteyner Miktar:', kalanKonteynerMiktariController),
              buildTextWithFormField('Konteyner tipi:', konteynerTipiController),
              buildTextWithFormField('Konteyner Deposu:', konteynerDeposuController),
              buildFormFieldWithButton('Konteyner alım tarihi', 'Konteyner alım tarihi', konteynerAlimTarihiController),
              buildTextWithFormField('Konteyner giriş limanı:', konteynerGirisLimaniController),
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
  Widget buildElevatedButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(204, 144, 0, 1),
      ),
      onPressed: () {
        //Navigator.push(
        //  context,
        //  MaterialPageRoute(builder: (context) => nakilPage()),
        //);
      },
      child: Text('Go to Yurtdisi Page'),
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

        //controller.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }
}

class OperatorPageData {
  final String selectedProduct;
  final DateTime? selectedDate;

  OperatorPageData(this.selectedProduct, this.selectedDate);
}