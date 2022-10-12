import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 8.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0,
                        ),
                        child: Container(),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFF063A34).withOpacity(0.87),
                              const Color(0xFF063A34).withOpacity(0.87),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF000000).withOpacity(0.28),
                              blurRadius: 47,
                              spreadRadius: 0,
                              offset: const Offset(
                                  0, 4),
                            ),
                          ],
                        ),
                        child: const TextField(
                          style: TextStyle(
                            color: Color(0xFF38FFD1),
                            fontFamily: 'Archia',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textCapitalization: TextCapitalization.none,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          cursorRadius: Radius.circular(2.0),
                          cursorColor: Color(0xFF38FFD1),
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 16.0),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Color(0x80FFFFFF),
                              fontFamily: 'Archia',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),

                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0,
                        ),
                        child: Container(),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFF063A34).withOpacity(0.87),
                              const Color(0xFF063A34).withOpacity(0.87),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF000000).withOpacity(0.28),
                              blurRadius: 47,
                              spreadRadius: 0,
                              offset: const Offset(
                                  0, 4),
                            ),
                          ],
                        ),
                        child: const TextField(
                          style: TextStyle(
                            color: Color(0xFF38FFD1),
                            fontFamily: 'Archia',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textCapitalization: TextCapitalization.none,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          obscuringCharacter: 'x',
                          obscureText: true,
                          autocorrect: false,
                          cursorRadius: Radius.circular(2.0),
                          cursorColor: Color(0xFF38FFD1),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.visibility,
                                color: Color(0xFF38FFD1),
                              ),
                              onPressed: null,
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16.0),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Color(0x80FFFFFF),
                              fontFamily: 'Archia',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: Colors.transparent),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: Colors.transparent),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: Colors.transparent),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF03DABB),
                      Color(0xFF03DA9A),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF03DABB).withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: MaterialButton(
                  focusColor: const Color(0xFF38FFD1).withOpacity(0.5),
                  hoverColor: const Color(0xFF38FFD1).withOpacity(0.5),
                  highlightColor: const Color(0xFF38FFD1).withOpacity(0.5),
                  splashColor: const Color(0xFF38FFD1).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  onPressed: () {},
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Archia',
                          color: Color(0xFF182724),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
