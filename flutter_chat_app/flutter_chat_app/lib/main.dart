import 'package:flutter/material.dart';
import 'package:flutter_chat_app/app.dart';
import 'package:flutter_chat_app/loading.dart';
import 'package:flutter_chat_app/search.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '聊天室',
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder>{
        "app": (context) => App(),
        "/friends": (_) => WebviewScaffold(
          url: "https://flutter.io",
          appBar: AppBar(
            title: Text('Flutter官网'),
          ),
          withZoom: true,
          withLocalStorage: true,
        ),
        "search": (context) => Search()
      },
      home: LoadingPage(),
    );
  }
}

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Colors.green
);


