import 'package:flutter/material.dart';
import 'screen/newsfeeds.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(DescriptionPage(null));

class DescriptionPage extends StatelessWidget {
  @override
  static String tag = 'description-page';
  DescriptionPage(this.urlnews);
  final String urlnews;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange,
        title: new Text(
          "Full Article",
          style: new TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: WebviewScaffold(url: urlnews),
      ),
    );
  }
}
