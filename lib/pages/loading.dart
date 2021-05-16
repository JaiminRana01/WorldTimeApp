import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getdata() async {
    var url =
    Uri.https('worldtimeapi.org', '/api/timezone/Asia/Kolkata', {'q': '{http}'});
    //make the request
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    // print(data);

    //get properties from data
    String datetime = data['datetime'];
    String offset1 = data['utc_offset'].substring(1,3);
    String offset2 = data['utc_offset'].substring(4,6);
    // print(datetime);
    // print(offset1);
    // print(offset2);

    //create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset1), minutes: int.parse(offset2)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
