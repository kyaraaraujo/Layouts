import 'package:flutter/material.dart';
import 'package:layouts/pages/dessert_page.dart';
import 'package:layouts/pages/weather_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> pagesTitle = [
      'Dessert Page with favorite state',
    ];

    const List<Widget> pagesView = [
      DessertPage(),
    ];

    Color? alternateCardColor(int index) {
      if (index.isEven) {
        return Colors.blue[600];
      } else {
        return Colors.blue[300];
      }
    }

    return const MaterialApp(
      title: 'Layouts for practicing',
      home: WeatherPage(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Layouts Pages'),
      //   ),
      // body: ListView.separated(
      //   padding: const EdgeInsets.all(8),
      //   separatorBuilder: (context, index) => const Divider(),
      //   itemCount: pagesTitle.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       elevation: 5,
      //       child: ListTile(
      //         tileColor: alternateCardColor(index),
      //         textColor: Colors.grey[100],
      //         title: Text(pagesTitle[index]),
      //         leading: Text('${index + 1}'),
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10)),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => pagesView[index],
      //               ));
      //         },
      //       ),
      //     );
      //   },
      // ),
      // ),
    );
  }
}
