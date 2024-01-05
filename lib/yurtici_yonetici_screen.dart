import 'package:flutter/material.dart';
//import 'yurtdisi.dart'; // Assuming YurtdisiPage is defined in yurtdisi.dart
//import 'package:etimaden/yurtdisi.dart';

class OperatorPage extends StatefulWidget {
  @override
  _OperatorPageState createState() => _OperatorPageState();
}

class _OperatorPageState extends State<OperatorPage> {
  final TextEditingController openingDateController = TextEditingController();
  final TextEditingController invoiceNoController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  final TextEditingController salesDocumentNoController = TextEditingController();
  final TextEditingController recipientNameController = TextEditingController();
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController packagingTypeController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController outgoingQuantityController = TextEditingController();
  final TextEditingController remainingQuantityController = TextEditingController();
  final TextEditingController resultController = TextEditingController();
  final TextEditingController shippingLocationController = TextEditingController();
  final TextEditingController recipientCompanyController = TextEditingController();

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
              buildFormFieldWithButton('Sevkiyatın açılış tarihi', 'Sevkiyatın açılış tarihi', openingDateController),
              buildTextWithFormField('Fatura No:', invoiceNoController),
              buildTextWithFormField('Satış Belge Numarası:', salesDocumentNoController),
              buildTextWithFormField('Alıcı Adı/Firma:', recipientNameController),
              buildTextWithFormField('Alıcı firma:', recipientCompanyController),
              buildTextWithFormField('Sevk yeri:', shippingLocationController),
              buildTextWithFormField('Ürün adı:', productNameController),
              buildTextWithFormField('Ambalaj Cinsi:', packagingTypeController),
              buildTextWithFormField('Miktar:', quantityController),
              buildTextWithFormField('Giden miktar:', outgoingQuantityController),
              buildTextWithFormField('Kalan Miktar:', remainingQuantityController),
              buildTextWithFormField('Not:', noteController),
              buildTextWithFormField('Sonuç:', resultController),
              Image.asset(
                "assets/images/eti_logo.png",
                width: 150,
                height: 150,
              ),

              // Add the following line to include the button
              buildElevatedButton(context),

              // ... (your existing code)
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
          //context,
          //MaterialPageRoute(builder: (context) => YurtdisiPage()),
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
        openingDateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }
}

class OperatorPageData {
  final String selectedProduct;
  final DateTime? selectedDate;

  OperatorPageData(this.selectedProduct, this.selectedDate);
}