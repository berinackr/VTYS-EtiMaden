import 'package:etimaden/nakil_yonetici_screen.dart';
import 'package:etimaden/yurtd%C4%B1s%C4%B1_yonetici_screen.dart';
import 'package:etimaden/yurtici_yonetici_screen.dart';
import 'package:flutter/material.dart';

class SevklerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SevklerListesi(),
          ],
        ),
      ),
    );
  }
}

class SevklerListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return SevkKarti();
        },
      ),
    );
  }
}

class SevkKarti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text('Sevk Başlığı'),
        subtitle: Text('Sevk Detayları'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nakilPage()),
          );
        },
      ),
    );
  }
}
