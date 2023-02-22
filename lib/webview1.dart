import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Webview1 extends StatefulWidget {
  const Webview1({Key? key}) : super(key: key);

  @override
  State<Webview1> createState() => _Webview1State();
}

class _Webview1State extends State<Webview1> {
  LocationData? locationData;
  locationss()async{
    Location locations=Location();
    LocationData locationDatas=await locations.getLocation();
    controller!.loadRequest(Uri.parse('https://www.google.com/maps/@${locationData!.latitude},${locationData!.longitude},15z'));

    setState(() {
      locationData=locationDatas;
    });
    // print(locationDatas.longitude);
    // print(locationDatas.latitude);


  }
  WebViewController? controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.google.com/maps/@11.300764,75.8280767,13z'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        locationss();

      },child: Text("+"),),
      body: SafeArea(child: WebViewWidget(controller:controller! )),
    );
  }
}
