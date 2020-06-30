import 'package:flutter/material.dart';
import 'package:japan/book_list_page.dart';
import 'package:japan/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
          create: (_) => MainModel(),
        child: Scaffold(
         appBar: AppBar(
          title: Text("amakake"),
         ),
         body: Consumer<MainModel>(
           builder: (context, model,child) {
             return Center(
              child: Column(
                children: <Widget>[
                  Text(
                    model.amakakeText,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      "ボタン"
                    ),
                    onPressed: () {
                      // TODO
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookListPage()),
                      );
                    },
                  ),
                ],
              ),
        );
           }
         ),

    ),
      ),
    );
  }
}