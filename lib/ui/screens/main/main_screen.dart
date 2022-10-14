import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:change_job/domain/factory/screen_factory.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final _screenFactory = ScreenFactory();

  void _onItemTapped(int index) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            _screenFactory.makeVacancyList(),
            _screenFactory.makeGenerationResume(),
            _screenFactory.makeUser(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: const BoxDecoration(
            color: Color(0xFF182724),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16.0),
              topLeft: Radius.circular(16.0),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) => _onItemTapped(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.archivebox_fill),
                label: 'Vacancy',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.doc_on_clipboard_fill),
                label: 'Resume',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_solid),
                label: 'Me',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
