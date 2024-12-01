import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebviewPage extends StatefulWidget {
  const WebviewPage({super.key});

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  late WebViewController controller;
  @override
    void initState() {
    
    super.initState();
    controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.google.com/"));
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    appBar: AppBar(title: const Text("Webview")),
    body: WebViewWidget(controller: controller,),

    );
  }
}