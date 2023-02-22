import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabbarWebview extends StatefulWidget {
  const TabbarWebview({Key? key}) : super(key: key);

  @override
  State<TabbarWebview> createState() => _TabbarWebviewState();
}

class _TabbarWebviewState extends State<TabbarWebview>with SingleTickerProviderStateMixin {

  TabController? tabController;
  WebViewController?controller;
  WebViewController?controller1;
  WebViewController?controller2;
  @override
  void initState() {
    // TODO: implement initState
    tabController=TabController(length: 3, vsync:this);
    controller=WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.google.com/maps/@11.300764,75.8280767,13z'));
    controller1=WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.facebook.com'));
    controller2=WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.instagram.com'));

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabController,
            tabs: [
              Text("google map"),
              Text("Facebook"),
              Text("Instagram"),
            ],),
      ),
      body:TabBarView(
        controller: tabController,
        children: [
          Container(
            child: WebViewWidget(controller:controller!)
          ),
          Container(
            child: WebViewWidget(controller:controller1!)
          ),
          Container(
            child: WebViewWidget(controller: controller2!)
          ),
        ],
      ),
    );
  }
}
