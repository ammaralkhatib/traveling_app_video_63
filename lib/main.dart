import 'package:flutter/material.dart';
import 'package:traveling_app/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './screens/trip_detail_screen.dart';
import './screens/category_trips_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'), // English, no country code
      ],
      title: 'Travel App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          fontFamily: 'ElMessiri',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                ),
                headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                ),
              )),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryTripsScreen.screenRoute: (ctx) => CategoryTripsScreen(),
        TripDetailScreen.screenRoute: (ctx) => TripDetailScreen(),
        FiltersScreen.screenRoute: (ctx) => FiltersScreen(),
      },
    );
  }
}
