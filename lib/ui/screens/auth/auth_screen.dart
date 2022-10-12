import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:change_job/domain/factory/screen_factory.dart';

class AuthScreen extends StatelessWidget {
  static final _screenFactory = ScreenFactory();

  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0C1615),
              Color(0xFF162826),
            ],
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 6.0),
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF182724),
                      borderRadius: BorderRadius.circular(6.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 36,
                          offset:
                              const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: SizedBox(
                      height: 36,
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: const Color(0xFF063A34),
                          borderRadius: BorderRadius.circular(4.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.28),
                              blurRadius: 47,
                              offset: const Offset(
                                  0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        unselectedLabelStyle: const TextStyle(
                          fontFamily: 'Archia',
                          color: Color(0x80FFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        labelStyle: const TextStyle(
                          fontFamily: 'Archia',
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        tabs: const [
                          Tab(child: Text('Login')),
                          Tab(child: Text('Sign Up')),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          body: Stack(
            children: [
              TabBarView(
                physics: const BouncingScrollPhysics(),
                children: [
                  _screenFactory.makeLogin(),
                  _screenFactory.makeSignUp(),
                ],
              ),
              DraggableScrollableSheet(
                minChildSize: 0.03,
                initialChildSize: 0.1,
                maxChildSize: 0.27,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF182724),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 8.0),
                            Container(
                              width: 32.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: const Color(0x33FFFFFF)),
                            ),
                            const SizedBox(height: 24.0),
                            const Text(
                              'Other Methods Auth',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Archia',
                                fontSize: 24.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 6.0),
                            const Text(
                              'Choose one of the login methods',
                              style: TextStyle(
                                color: Color(0x80FFFFFF),
                                fontFamily: 'Archia',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
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
                                    color: const Color(0xFF03DABB)
                                        .withOpacity(0.2),
                                    blurRadius: 5,
                                    spreadRadius: 5,
                                    offset: const Offset(
                                        0, 0), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: MaterialButton(
                                focusColor:
                                    const Color(0xFF38FFD1).withOpacity(0.5),
                                hoverColor:
                                    const Color(0xFF38FFD1).withOpacity(0.5),
                                highlightColor:
                                    const Color(0xFF38FFD1).withOpacity(0.5),
                                splashColor:
                                    const Color(0xFF38FFD1).withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.apple,
                                        color: Color(0xFF000000),
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        'Sign In',
                                        style: TextStyle(
                                          fontFamily: 'Archia',
                                          color: Color(0xFF182724),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
