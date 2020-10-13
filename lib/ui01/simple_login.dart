import 'package:flutter/material.dart';
import 'package:flutteruichallenge/ui01/simple_profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleLogin extends StatefulWidget {
  @override
  _SimpleLoginState createState() => _SimpleLoginState();
}

class _SimpleLoginState extends State<SimpleLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B4C4C),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                'AWESOME APP',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                    color: Color(0xffB0E5E5),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'User',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                    color: Color(0xffB0E5E5),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Login',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Color(0xffB0E5E5), fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: .7),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 25,
                height: 3,
                color: Color(0xffB0E5E5),
              ),
              SizedBox(height: 40),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  focusColor: Colors.red,
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Color(0xffB0E5E5)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffB0E5E5))),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffB0E5E5))),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xffB0E5E5)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffB0E5E5))),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffB0E5E5))),
                  suffixIcon: Icon(
                    FontAwesomeIcons.solidEyeSlash,
                    color: Color(0xffB0E5E5),
                    size: 16,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Lupa pasword?',
                      style: TextStyle(color: Color(0xffB0E5E5)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Color(0xff92EEEE),
                  // textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: Text(
                    'Masuk',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.red,
                    child: FaIcon(FontAwesomeIcons.googlePlusG, size: 18),
                    padding: EdgeInsets.all(12),
                    shape: CircleBorder(),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.blue,
                    child: FaIcon(FontAwesomeIcons.facebookF, size: 18),
                    padding: EdgeInsets.all(12),
                    shape: CircleBorder(),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Belum Punya Akun?',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(color: Color(0xffB0E5E5), fontWeight: FontWeight.w500),
                        ),
                      ),
                      FlatButton(
                        minWidth: 110,
                        color: Color(0xff00C2FF),
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Text('Daftar'),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SimpleProfile()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
