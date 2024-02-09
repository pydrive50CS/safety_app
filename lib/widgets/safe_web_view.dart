import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/*WebViews are a mechanism that enables developers to display web content within their mobile applications.
  Think of them as windows into the web, where you can load websites, web applications, or any web content directly within your Flutter app. 
  WebViews provide a versatile approach to bring the power of the web into your native mobile app, enabling you to leverage existing 
  web technologies and resources.*/

class SafeWebView extends StatelessWidget {
  const SafeWebView({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    //.. is cascade notation that allows multiple change
    late final WebViewController _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(url));
    return SafeArea(
      child: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
