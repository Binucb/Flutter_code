import 'package:flutter/material.dart';

import 'login.dart';
import 'home.dart';

class ShrineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaveBig',
        home: HomePage(),
      initialRoute: '/login',
        onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings){
    if (settings.name !='/login'){
      return null;
    }
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}
