import 'package:flutter/material.dart';

import 'package:change_job/domain/factory/screen_factory.dart';
import 'package:flutter/services.dart';

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
            colors: [Color(0xFF0C1615), Color(0xFF162826)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
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
                minChildSize: 0.11,
                initialChildSize: 0.11,
                maxChildSize: 0.23,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
