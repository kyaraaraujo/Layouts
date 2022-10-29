import 'package:flutter/material.dart';
import 'package:layouts/pages/contact_page.dart';
import 'package:layouts/pages/dessert_page.dart';
import 'package:layouts/pages/weather_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ;

    const List<Map<String, dynamic>> pages = [
      {'label': 'Dessert - favorite interaction', 'page': DessertPage()},
      {'label': 'Contact', 'page': ContactPage()},
      {'label': 'Weather', 'page': WeatherPage()},
    ];

    Color? alternateCardColor(int index) {
      if (index.isEven) {
        return Colors.black87;
      } else {
        return Colors.black;
      }
    }

    return MaterialApp(
      title: 'Layouts for practicing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.black87),
      ),
      home: Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          title: const Text('Layouts Pages'),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: ListTile(
                tileColor: alternateCardColor(index),
                textColor: Colors.grey[100],
                title: Text(pages[index]['label']),
                leading: Text('${index + 1}'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pages[index]['page'],
                      ));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
