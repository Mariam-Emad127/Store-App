import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:store_app/screens/home_page.dart';


import 'screens/update_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
return MaterialApp(

  routes: {

    HomePage.id  :(context) =>HomePage(),
    UpdateProductPage.id:(context)=>UpdateProductPage()

  },
initialRoute:HomePage.id,
//UpdateProductPage.id,
//HomePage().id,


);
   }
}
