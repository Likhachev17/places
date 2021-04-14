import 'package:flutter/material.dart';
import 'package:places/ui/settings_screen.dart';
import 'package:places/ui/widgets/empty_visited_places.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/sight_card_widgets/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
import 'package:places/ui/widgets/empty_favorites_places.dart';
import 'mocks.dart';
import 'package:places/ui/screen/res/themes.dart';
import 'package:places/ui/screen/filters_screen/filters_screen.dart';

/// current theme storage
final themeState = ThemeState();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    themeState.addListener(_onThemeChange);
  }

  @override
  void dispose() {
    themeState.removeListener(_onThemeChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeState.isDark ? darkTheme : lightTheme,
      debugShowCheckedModeBanner: false,
      // home: SightListScreen(),
      // home: SightDetails(
      //   sight: mocks[6],
      // ),
      // home: VisitingScreen(),
      //home: FiltersScreen(),
      home: SettingsScreen(),
    );
  }

  void _onThemeChange() => setState(() {});
}

// Временно лежит здесь. После прохождения темы "хранение данных" займет положенное место.
// Тема меняется парамаетром [ThemeState.isDark], подписываемся на обновления и меняем тему в MaterialApp. Смена темы происходит в [SettingsScreen]
class ThemeState extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  set isDark(bool newVal) {
    _isDark = newVal;
    notifyListeners();
  }
}
