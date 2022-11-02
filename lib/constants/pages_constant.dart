import '../pages/contact_page.dart';
import '../pages/dessert_page.dart';
import '../pages/weather_page.dart';
import '../widgets/stack_widget.dart';
import 'assets_paths_constant.dart';

const List<dynamic> pages = [
  StackWidget(
    '${imageBasePath}dessert.png',
    DessertPage(),
    'Dessert',
  ),
  StackWidget(
    '${imageBasePath + displayDir}contact_page.png',
    ContactPage(),
    'Contact',
  ),
  StackWidget(
    '${imageBasePath + displayDir}weather_display.png',
    WeatherPage(),
    'Weather',
  ),
];
