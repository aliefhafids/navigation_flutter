import 'package:flutter/material.dart';
import 'screens/screens.dart';

class App extends StatelessWidget {
  const App({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentScreen.routeName: (context) =>
          const ExtractArgumentScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      title: 'Navigation with arguments',
      home: const HomeScreen(),
    );
  }
}