import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenerationResumeScreen extends StatelessWidget {
  const GenerationResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TagsInformation> listTagsInformation = [
      TagsInformation(label: 'MySQL', selected: false),
      TagsInformation(label: 'Flutter', selected: true),
      TagsInformation(label: 'Dart', selected: false),
      TagsInformation(label: 'Vim', selected: false),
      TagsInformation(label: 'SQLite', selected: false),
      TagsInformation(label: 'MySQL', selected: false),
      TagsInformation(label: 'Firebase Database', selected: true),
      TagsInformation(label: 'UI/UX', selected: false),
      TagsInformation(label: 'Java', selected: false),
      TagsInformation(label: 'Swift', selected: false),
      TagsInformation(label: 'Rest API', selected: false),
      TagsInformation(label: 'Websocket', selected: true),
      TagsInformation(label: 'SOLID', selected: false),
      TagsInformation(label: 'Dio', selected: false),
      TagsInformation(label: 'Freezed', selected: false),
      TagsInformation(label: 'BLoC', selected: false),
      TagsInformation(label: 'DRY', selected: true),
      TagsInformation(label: 'Clean Architecture', selected: false),
      TagsInformation(label: 'MVI', selected: false),
      TagsInformation(label: 'MVVM', selected: false),
      TagsInformation(label: 'MVP', selected: false),
      TagsInformation(label: 'Intl', selected: true),
      TagsInformation(label: 'rxDart', selected: false),
      TagsInformation(label: 'Equatable', selected: false),
      TagsInformation(label: 'Provider', selected: false),
      TagsInformation(label: 'FlutterBloc', selected: false),
      TagsInformation(label: 'Figma', selected: true),
      TagsInformation(label: 'Git', selected: false),
      TagsInformation(label: 'WebRTC', selected: false),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generation Resume'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          children: listTagsInformation
              .map(
                (item) => _TagChipWidget(
                  tagsInformation: item,
                ),
              )
              .toList()
              .cast<Widget>(),
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
            child: BackdropFilter(
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
                    CupertinoIcons.doc_person_fill,
                    color: Color(0xFFFFFFFF),
                    shadows: [
                      BoxShadow(
                        color: Color(0x87FFFFFF),
                        spreadRadius: 15,
                        blurRadius: 15,
                        offset: Offset(-1, 0),
                      ),
                    ],
                  ),
                ),
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
  final TagsInformation tagsInformation;

  const _TagChipWidget({
    Key? key,
    required this.tagsInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(tagsInformation.label),
      selected: tagsInformation.selected,
      onSelected: (bool value) {},
    );
  }
}
