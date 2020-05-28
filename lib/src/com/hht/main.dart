import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:la_banquera/src/com/hht/providers/results_provider.dart';
import 'package:la_banquera/src/com/hht/view/home.dart';
import 'package:la_banquera/src/com/hht/view/lottery_details_view.dart';
import 'package:provider/provider.dart';

void main() {

  //flutter build appbundle --target=lib/src/com/hht/main.dart


  //WidgetsFlutterBinding.ensureInitialized();
  runApp(LaBanqueraApp());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class LaBanqueraApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //  ChangeNotifierProvider( create: (ctx) => ResultsProvider(), ),
        ChangeNotifierProvider.value(value: ResultsProvider()),
      ],
      child: MaterialApp(
        title: 'La Banquera',
        debugShowCheckedModeBanner: true,
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.blueAccent,
        ),
        //home: HomePage(),
        routes: {
          '/': (ctx) => HomePage(),
          '/lotteryDetails': (ctx) => LotteryDetail(),
        },
        //manda a esta pantalla por defecto si  la pagina que quiere ir no esta declarado en la routes
        onGenerateRoute: (settings) {
          print(settings.arguments);
          return MaterialPageRoute(builder: (ctx) => HomePage());
        },
        //si flutter no carga todos los metodos o si desconoce la ruta
        onUnknownRoute: (settings) =>
            MaterialPageRoute(builder: (ctx) => HomePage()),
      ),
    );
  }
}
