import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleProfile extends StatefulWidget {
  @override
  _SimpleProfileState createState() => _SimpleProfileState();
}

class _SimpleProfileState extends State<SimpleProfile> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffAFE4E4),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff2B4C4C),
        title: Text('Profile'),
        centerTitle: true,
        actions: [IconButton(icon: FaIcon(FontAwesomeIcons.cog), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Color(0xff2B4C4C),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/default_user.jpg'),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Your Name',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: Color(0xffB0E5E5),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      child: Text(
                        'Username',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Material(
                      elevation: 3,
                      // color: ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      child: Text(
                        'E-mail',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Material(
                      elevation: 3,
                      // color: ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      child: Text(
                        'Password',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Material(
                      elevation: 3,
                      // color: ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        width: 150,
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: Color(0xff2B4C4C),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                          child: Text(
                            'Simpan',
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
