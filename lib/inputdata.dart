import 'package:flutter/material.dart';

class InputData extends StatelessWidget {
  static String tag = 'input';

  @override
  Widget build(BuildContext context) {
    final title = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.only(top: 30.0, right: 220.0),
        child: Text(
          'FORYU',
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );

    final slogan = Padding(
      padding: EdgeInsets.only(bottom: 20.0, right: 175.0),
      child: Text(
        'Belanja furniture ga ribet.',
        style: TextStyle(fontSize: 12.0, color: Colors.black54),
      ),
    );

    final inputtext = Padding(
      padding: EdgeInsets.only(bottom: 10.0, top: 30.0),
      child: Text(
        'INPUT DATA INFORMASI',
        style: TextStyle(
            fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );

    final foto = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/user.jpg'),
        ),
      ),
    );

    final namauser = Padding(
      padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
      child: Text(
        'I Putu Sudana',
        style: TextStyle(
            fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );

    final email = Container(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );

    final password = Container(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );

    final nohp = Container(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'No. HP',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );

    final ttd = Container(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Tempat/Tanggal Lahir',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );

    final alamat = Container(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Alamat',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 80.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.only(right: 220.0, top: 5.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {},
        padding: EdgeInsets.fromLTRB(25.0, 12.0, 25.0, 12.0),
        color: Colors.orangeAccent,
        child: Text('Save Data', style: TextStyle(color: Colors.white)),
      ),
    );

    final body = Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.white,
        ]),
      ),

      child: Column(
        children: <Widget>[
          title,
          slogan,
          inputtext,
          foto,
          namauser,
          email,
          password,
          ttd,
          nohp,
          alamat,
          loginButton,
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}