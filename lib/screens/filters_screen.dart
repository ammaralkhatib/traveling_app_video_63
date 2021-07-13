import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key key}) : super(key: key);

  static const screenRoute = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _isInSommer = false;
  var _isInWinter = false;
  var _isForFamily = false;

  Widget buildSwitchListTile(
      String title, String subtitle, var currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الفلترة'),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'الرحلات الصيفية فقط',
                  'إظهار الرحلات في فصل الصيف فقط',
                  _isInSommer,
                  (newValue) {
                    setState(() {
                      _isInSommer = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'الرحلات الشتوية فقط',
                  'إظهار الرحلات في فصل الشتاء فقط',
                  _isInWinter,
                  (newValue) {
                    setState(() {
                      _isInWinter = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'للعائلات',
                  'إظهار الرحلات التي للعائلات فقط',
                  _isForFamily,
                  (newValue) {
                    setState(() {
                      _isForFamily = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
