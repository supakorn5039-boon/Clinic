import 'package:clinic/screens/Signup_screen.dart';
import 'package:clinic/screens/login_screen.dart';
import 'package:clinic/widgets/navbar_roots.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFCAF0F0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NavBarRoots()));
                  },
                  child: Text("SKIP",
                      style: TextStyle(color: Color(0xFF4A72E9), fontSize: 20)),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("images/doctors.png")),
              SizedBox(
                height: 50,
              ),
              Text("Doctor Appointment",
                  style: TextStyle(
                    color: Color(0xFF4A72E9),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  )),
              SizedBox(
                height: 10,
              ),
              Text("Appoint your Doctor",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Color(0xFF4A72E9),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Text(
                            "Log in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  Material(
                    color: Color(0xFF4A72E9),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
