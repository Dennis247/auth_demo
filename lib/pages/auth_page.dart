import 'package:flutter/material.dart';
import 'package:ui_demo/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Constants.primaryColor,
        width: mediaQuery.width,
        height: mediaQuery.height,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: ListView(
            children: <Widget>[
              Image.asset("assets/images/logo_trp.png"),
              SizedBox(
                height: mediaQuery.height * 0.07,
              ),
              Text('Welcome',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              SizedBox(
                height: mediaQuery.height * 0.02,
              ),
              Text(
                'Enjoy the worlds fastest and best network',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: mediaQuery.height * 0.07,
              ),
              MaterialButton(
                height: 55,
                elevation: 2.0,
                minWidth: mediaQuery.width,
                onPressed: () {
                  _showBottomRegistration(context);
                },
                child: Text('SIGN UP',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                    side: BorderSide(color: Colors.white, width: 2)),
              ),
              SizedBox(
                height: mediaQuery.height * 0.03,
              ),
              MaterialButton(
                height: 55,
                elevation: 2.0,
                minWidth: mediaQuery.width,
                color: Colors.white,
                onPressed: () {
                  _showBottomLogin(context);
                },
                child: Text('LOGIN',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                    side: BorderSide(color: Colors.white, width: 2)),
              ),
              SizedBox(
                height: mediaQuery.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('Language',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                          ),
                        )),
                    onPressed: () {},
                  ),
                  new Container(
                      alignment: Alignment.center,
                      child: Text(
                        'English',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      width: 78,
                      height: 30,
                      decoration: new BoxDecoration(
                          color: Color(0xff404040)
                              .withOpacity(0.20000000298023224),
                          borderRadius: BorderRadius.circular(156)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _showBottomLogin(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext ctx) {
          return Container(
            decoration: new BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38.0),
                    topRight: Radius.circular(38.0))),
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: ListView(
                children: <Widget>[
                  new Text("Login",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xffd6001b),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      )),
                  SizedBox(
                    height: mediaQuery.height * 0.03,
                  ),
                  new Text("Lets get started",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff999999),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      )),
                  SizedBox(
                    height: mediaQuery.height * 0.05,
                  ),
                  _buildTextInputWidget("Username", false),
                  SizedBox(
                    height: mediaQuery.height * 0.03,
                  ),
                  _buildTextInputWidget("Password", true),
                  SizedBox(height: mediaQuery.height * 0.02),
                  new Text("Forgot password ?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff333333),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      )),
                  SizedBox(
                    height: mediaQuery.height * 0.03,
                  ),
                  MaterialButton(
                    height: 55,
                    minWidth: mediaQuery.width,
                    color: Constants.primaryColor,
                    onPressed: () {},
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Constants.secondaryColor,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                        side: BorderSide(
                            color: Constants.primaryColor, width: 2)),
                  ),
                ],
              ),
            ),
          );
        });
  }

  _showBottomRegistration(BuildContext context) async {
    bool _isChecked = false;
    final mediaQuery = MediaQuery.of(context).size;
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: new BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(38.0),
                        topRight: Radius.circular(38.0))),
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: ListView(
                    children: <Widget>[
                      new Text("Signup",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xffd6001b),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          )),
                      SizedBox(
                        height: mediaQuery.height * 0.03,
                      ),
                      new Text(
                          "Register with  airtel account number, to start your account !",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff999999),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          )),
                      SizedBox(
                        height: mediaQuery.height * 0.05,
                      ),
                      _buildTextInputWidget("Mobile Phone Number", false),
                      SizedBox(
                        height: mediaQuery.height * 0.03,
                      ),
                      Container(
                        decoration: new BoxDecoration(
                            color: Color(0xfff4f8fb),
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 0, top: 0, bottom: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Email Addreess",
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff999999),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.03,
                      ),
                      _buildTextInputWidget("Password", true),
                      SizedBox(
                        height: mediaQuery.height * 0.03,
                      ),
                      _buildTextInputWidget("Confirm Password", true),
                      SizedBox(
                        height: mediaQuery.height * 0.03,
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: new Text("Terms & conditions",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff333333),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            )),
                        value: _isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _isChecked = value;
                          });
                        },
                        activeColor: Constants.primaryColor,
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.05,
                      ),
                      MaterialButton(
                        height: 55,
                        minWidth: mediaQuery.width,
                        color: Constants.primaryColor,
                        onPressed: () {},
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                            side: BorderSide(
                                color: Constants.primaryColor, width: 2)),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }

  Widget _buildTextInputWidget(String labelText, bool obscureText) {
    return Container(
        decoration: new BoxDecoration(
            color: Color(0xfff4f8fb), borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 0, top: 0, bottom: 10),
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: labelText,
                labelStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xff999999),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                )),
          ),
        ));
  }
}
