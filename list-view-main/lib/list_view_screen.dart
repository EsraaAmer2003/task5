import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'العنصر الأول',
      'العنصر الثاني',
      'العنصر الثالث',
      'العنصر الرابع',
      'العنصر الخامس',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff1380A5),
        title: const Text(
          'قائمة العناصر',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              title: Text(items[index]),
              leading: CircleAvatar(
                backgroundColor: const Color(0xff1380A5),
                child: Text('${index + 1}',
                    style: const TextStyle(color: Colors.white)),
              ),
            ),
          );
        },
      ),
    );
  }
}
