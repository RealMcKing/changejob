import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VacancyListScreen extends StatelessWidget {
  const VacancyListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ClipRRect(
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
                        offset: const Offset(0, 4),
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
                    autocorrect: false,
                    cursorRadius: Radius.circular(2.0),
                    cursorColor: Color(0xFF38FFD1),
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.search),
                      hintText: "Search Vacancy",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        itemBuilder: (BuildContext context, int index) {
          return const VacancyItemWidget();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 8.0);
        },
        itemCount: 20,
      ),
    );
  }
}

class VacancyItemWidget extends StatelessWidget {
  const VacancyItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Flutter Senior Developer',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4.0),
              const Text(
                '21.02.2021',
                style: TextStyle(
                  color: Color(0x80FFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8.0),
              Wrap(
                direction: Axis.horizontal,
                spacing: 8.0,
                children: const [
                  _TagWidget(tag: 'Full-Time'),
                  _TagWidget(tag: '4 000\$'),
                  _TagWidget(tag: 'Kiev'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _TagWidget extends StatelessWidget {
  final String tag;

  const _TagWidget({
    Key? key,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
          color: const Color(0xFF03DABB),
          width: 1.3,
        ),
      ),
      child: Text(
        tag,
        style: const TextStyle(
          color: Color(0xFF03DABB),
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
