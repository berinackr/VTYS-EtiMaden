import 'package:flutter/material.dart';

class SevklerScreenYonetici extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 255, 207, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Expanded(
                  child: SearchAnchor(
                    builder: (BuildContext context, SearchController controller) {
                      return SearchBar(
                        controller: controller,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                        leading: const Icon(Icons.search),
                      );
                    },
                    suggestionsBuilder: (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String item = 'item $index';
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        );
                      });
                    },
                  ),
                ),
                PopupMenuButton<String>(
                  icon: Icon(Icons.filter_list),
                  onSelected: (String value) {
                    // Handle the selected filter option
                    // You can add logic to open a filter screen or perform other actions
                    // For now, let's print the selected value.
                    print("Selected filter: $value");
                  },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'Nakil',
                      child: Text('Nakil'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Yurtiçi',
                      child: Text('Yurtiçi'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Yurtdışı',
                      child: Text('Yurtdışı'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Ekle (Add) button click
                    print('Ekle button clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                    onPrimary: Colors.white, // Buton içindeki yazı rengi
                  ),
                  child: Text('Ekle'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle Sil (Delete) button click
                    print('Sil button clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                    onPrimary: Colors.white, // Buton içindeki yazı rengi
                  ),
                  child: Text('Sil'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle Güncelle (Update) button click
                    print('Güncelle button clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(204, 144, 0, 1), // Buton rengi
                    onPrimary: Colors.white, // Buton içindeki yazı rengi
                  ),
                  child: Text('Güncelle'),
                ),
              ],
            ),
            SevklerListesi(),
          ],
        ),
      ),
    );
  }
}

class SevklerListesi extends StatefulWidget {
  @override
  _SevklerListesiState createState() => _SevklerListesiState();
}

class _SevklerListesiState extends State<SevklerListesi> {
  int? selectedSevkIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return SevkKarti(
            index: index,
            isSelected: selectedSevkIndex == index,
            onSelect: () {
              setState(() {
                selectedSevkIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}

class SevkKarti extends StatelessWidget {
  final int index;
  final bool isSelected;
  final VoidCallback onSelect;

  const SevkKarti({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: isSelected ? Color.fromRGBO(204, 144, 0, 1) : null,
      child: ListTile(
        title: Text('Sevk Başlığı $index'),
        subtitle: Text('Sevk Detayları $index'),
        onTap: () {
          onSelect();
          // You can navigate or perform any other action here
        },
      ),
    );
  }
}
