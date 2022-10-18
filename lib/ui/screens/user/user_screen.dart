import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Space'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _UserPhotoWidget(),
            SizedBox(height: 16.0),
            _UserAccountWidget(),
            SizedBox(height: 16.0),
            _SettingsBlockWidget(),
            SizedBox(height: 16.0),
            _ExitButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class _UserPhotoWidget extends StatelessWidget {
  const _UserPhotoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: const Color(0xFF03DABB),
              width: 2.0,
            ),
          ),
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              'assets/images/1.jpg',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 0.0,
          child: InkWell(
            borderRadius: BorderRadius.circular(8.0),
            onTap: () {},
            child: Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFF063A34).withOpacity(0.87),
                    const Color(0xFF063A34).withOpacity(0.87),
                  ],
                ),
              ),
              child: const Icon(
                CupertinoIcons.pen,
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
      ],
    );
  }
}

class _UserAccountWidget extends StatelessWidget {
  const _UserAccountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userInformation = [
      _BlockInformation(
          information: 'Real User Name',
          support: 'User Name',
          leadingIcon: CupertinoIcons.person_solid),
      _BlockInformation(
          information: '00.00.0000',
          support: 'Birthday',
          leadingIcon: CupertinoIcons.calendar_today),
      _BlockInformation(
          information: '+380 00 000 00 00',
          support: 'Phone number',
          leadingIcon: CupertinoIcons.device_phone_portrait),
      _BlockInformation(
          information: 'City',
          support: 'User location',
          leadingIcon: CupertinoIcons.location_fill),
      _BlockInformation(
          information: 'Yale University',
          support: 'Higher education',
          leadingIcon: CupertinoIcons.book_fill),
      _BlockInformation(
          information: 'Skilled Mobile Developer with 5 years of strong',
          support: 'About user',
          leadingIcon: CupertinoIcons.person_solid)
    ];
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF063A34).withOpacity(0.87),
                const Color(0xFF063A34).withOpacity(0.79),
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
            children: [
              InkWell(
                onTap: () {},
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    topLeft: Radius.circular(12.0)),
                child: _UserInformationBlockWidget(
                  information: userInformation[0],
                ),
              ),
              const Divider(height: 1.0, color: Color(0xFF084941)),
              InkWell(
                onTap: () {},
                child: _UserInformationBlockWidget(
                  information: userInformation[1],
                ),
              ),
              const Divider(height: 1.0, color: Color(0xFF084941)),
              InkWell(
                onTap: () {},
                child: _UserInformationBlockWidget(
                  information: userInformation[2],
                ),
              ),
              const Divider(height: 1.0, color: Color(0xFF084941)),
              InkWell(
                onTap: () {},
                child: _UserInformationBlockWidget(
                  information: userInformation[3],
                ),
              ),
              const Divider(height: 1.0, color: Color(0xFF084941)),
              InkWell(
                onTap: () {},
                child: _UserInformationBlockWidget(
                  information: userInformation[4],
                ),
              ),
              const Divider(height: 1.0, color: Color(0xFF084941)),
              InkWell(
                onTap: () {},
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0)),
                child: _UserInformationBlockWidget(
                  information: userInformation[5],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _UserInformationBlockWidget extends StatelessWidget {
  final _BlockInformation information;

  const _UserInformationBlockWidget({
    Key? key,
    required this.information,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          Icon(
            information.leadingIcon,
            color: const Color(0xFFFFFFFF),
            shadows: const [
              BoxShadow(
                color: Color(0x87FFFFFF),
                spreadRadius: 15,
                blurRadius: 15,
                offset: Offset(-1, 0),
              ),
            ],
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  information.information,
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  information.support,
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            CupertinoIcons.arrow_right,
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
        ],
      ),
    );
  }
}

class _ExitButtonWidget extends StatelessWidget {
  const _ExitButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              'Exit',
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
    );
  }
}

class _SettingsBlockWidget extends StatelessWidget {
  const _SettingsBlockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userInformation = [
      _BlockInformation(
          information: 'Secret information',
          support: 'Reset password',
          leadingIcon: CupertinoIcons.staroflife_fill),
    ];
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF063A34).withOpacity(0.87),
                const Color(0xFF063A34).withOpacity(0.79),
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
            children: [
              InkWell(
                onTap: () {},
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                  bottomLeft: Radius.circular(12.0),
                ),
                child: _UserInformationBlockWidget(
                  information: userInformation[0],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _BlockInformation {
  late final String information;
  late final String support;
  late final IconData leadingIcon;

  _BlockInformation({
    required this.information,
    required this.support,
    required this.leadingIcon,
  });
}
