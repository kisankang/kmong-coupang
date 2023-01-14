import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://link.coupang.com/a/L7UJM');

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WebApp(),
      ),
    );

class WebApp extends StatefulWidget {
  const WebApp({super.key});

  @override
  State<WebApp> createState() => _WebAppState();
}

class _WebAppState extends State<WebApp> {
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _launchUrl();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchUrl,
      child: Expanded(child: Container(color: Colors.black)),
    );
  }
}
