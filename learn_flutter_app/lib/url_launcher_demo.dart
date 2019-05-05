
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class UrlLauncherDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('第三方包使用实例'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                launchUrl();
              },
              child: Text('Open Baidu'),
            ),
            RaisedButton(
              onPressed: () =>  getUrl(),
              child: Text('get Url'),
            ),
            RaisedButton(
              onPressed: () => getWeatherDataUseHttpClient(),
              child: Text('httpClient request'),
            )
          ],
        )
      ),
    );

  }

  void launchUrl() async {
    const url = 'https://www.baidu.com';
    if (await canLaunch(url)) {
      await launch(url);
    }else {
      throw 'Could not launch $url';
    }
  }

  getUrl() async {
    var url = 'http://httpbin.org';
    http.get(url).then((response){
      print('状态： ${response.statusCode}');
      print('正文：${response.body}');
    });
  }

  getWeatherDataUseHttpClient() async {
    try{
      //实例化一个HttpClient对象
      HttpClient httpClient = HttpClient();
      //发起请求
      HttpClientRequest request = await httpClient.getUrl(
          Uri.parse("http://t.weather.sojson.com/api/weather/city/101030100"));
      //等待服务器返回数据
      HttpClientResponse response = await request.close();
      //使用utf8.decoder 从 response里解析数据
      var result = await response.transform(utf8.decoder).join();
      //输出响应头
      print(result);
      //关闭httpclient
      httpClient.close();

    }catch (e,s) {
      print('请求失败： $e');
      print('Stack trace:\n $s');
    }finally{
    }
  }

}