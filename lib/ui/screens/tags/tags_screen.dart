import 'dart:ui';

import 'package:flutter/material.dart';

class TagsScreen extends StatelessWidget {
  const TagsScreen({Key? key}) : super(key: key);

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
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Mark Your Skills',
            style: TextStyle(
              fontFamily: 'Archia',
              color: Color(0xFFFFFFFF),
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Archia',
                  color: Color(0xFFFFFFFF),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 8.0,
              children: const [
                _TagChipWidget(
                  label: 'Registration',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Emails of Employment Center',
                  selected: true,
                ),
                _TagChipWidget(
                  label: 'Useful links',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Hotlines',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Registasdasdration',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Emails of Emploasdyment Center',
                  selected: true,
                ),
                _TagChipWidget(
                  label: 'Useful links',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Hotlinasdasdes',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Registration',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Emails of Employment Center',
                  selected: true,
                ),
                _TagChipWidget(
                  label: 'Usefasdul links',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Hotlsadasdines',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Registration',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Emails of Employment Center',
                  selected: true,
                ),
                _TagChipWidget(
                  label: 'Useasdadsful links',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Hotliasdnes',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Regiasasdstration',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Emaasdasdils of Employment Center',
                  selected: true,
                ),
                _TagChipWidget(
                  label: 'Useful links',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Hotasdlines',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Hotlsadasdines',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Registration',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Emails of Employment Center',
                  selected: true,
                ),
                _TagChipWidget(
                  label: 'Useasdadsful links',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Hotliasdnes',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Regiasasdstration',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Emaasdasdils of Employment Center',
                  selected: true,
                ),
                _TagChipWidget(
                  label: 'Useful links',
                  selected: false,
                ),
                _TagChipWidget(
                  label: 'Hotasdlines',
                  selected: false,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Container(
              width: double.infinity,
              color: Colors.transparent,
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 9.0,
                      sigmaY: 9.0,
                    ),
                    child: Container(
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
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TagsInformation {
  late final String label;
  late final bool selected;

  TagsInformation({
    required this.label,
    required this.selected,
  });
}

class _TagChipWidget extends StatelessWidget {
  final String label;
  final bool selected;

  const _TagChipWidget({
    Key? key,
    required this.label,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      label: Text(label),
      backgroundColor: const Color(0xFF063A34),
      selectedColor: const Color(0xFF03DA9A),
      selected: selected,
      onSelected: (bool value) {},
    );
  }
}
