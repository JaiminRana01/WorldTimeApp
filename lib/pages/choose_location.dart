import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getdata() async {
    //simulate network request for a username
    String username =  await Future.delayed(Duration(seconds: 3), () {
      return 'jaimin';
    });

    //simulate network request to get a bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'gamer, cricketer';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getdata();
    print('hey there!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
