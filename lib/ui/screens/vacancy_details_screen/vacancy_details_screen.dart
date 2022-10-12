import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VacancyDetailsScreen extends StatelessWidget {
  const VacancyDetailsScreen({Key? key}) : super(key: key);

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
          title: Column(
            children: const [
              Text(
                'Senior Flutter Developer',
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Kiev, Ukraine',
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: const [
            _BodyContentWidget(),
            _DraggableScrollableContentWidget(),
          ],
        ),
        bottomNavigationBar: const _FitBackButtonWidget(),
      ),
    );
  }
}

class _FitBackButtonWidget extends StatelessWidget {
  const _FitBackButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFF182724),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          height: 48,
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
                  'Respond',
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
      ),
    );
  }
}

class _BodyContentWidget extends StatelessWidget {
  const _BodyContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(
                color: const Color(0xFF03DABB),
                width: 1.3,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(
                      CupertinoIcons.money_dollar_circle_fill,
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
                    SizedBox(width: 8.0),
                    Text(
                      '4 000\$',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Icon(
                      CupertinoIcons.desktopcomputer,
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
                    SizedBox(width: 8.0),
                    Text(
                      'Google Inc.',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Icon(
                      CupertinoIcons.home,
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
                    SizedBox(width: 8.0),
                    Text(
                      'Remote eligible',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Icon(
                      CupertinoIcons.time_solid,
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
                    SizedBox(width: 8.0),
                    Text(
                      'Full-Time',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            "Google's software engineers develop the next-generation technologies that change how billions of users connect, explore, and interact with information and one another. \n\n"
            "Our products need to handle information at massive scale, and extend well beyond web search. We're looking for engineers who bring fresh ideas from all areas, including information retrieval, distributed computing, large-scale system design, networking and data storage, security, artificial intelligence, natural language processing, UI design and mobile; the list goes on and is growing every day. As a software engineer, you will work on a specific project critical to Google’s needs with opportunities to switch teams and projects as you and our fast-paced business grow and evolve. We need our engineers to be versatile, display leadership qualities and be enthusiastic to take on new problems across the full-stack as we continue to push technology forward.With your technical expertise you will manage project priorities, deadlines, and deliverables. You will design, develop, test, deploy, maintain, and enhance software solutions.\n\n"
            "Android is Google’s open-source mobile operating system powering more than 3 billion devices worldwide. \n\n"
            "Android is about bringing computing to everyone in the world. We believe computing is a super power for good, enabling access to information, economic opportunity, productivity, connectivity between friends and family and more. We think everyone in the world should have access to the best computing has to offer. We provide the platform for original equipment manufacturers (OEMs) and developers to build compelling computing devices (smartphones, tablets, TVs, wearables, etc) that run the best apps/services for everyone in the world.\n",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _DraggableScrollableContentWidget extends StatelessWidget {
  const _DraggableScrollableContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.03,
      initialChildSize: 0.1,
      maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                    'Skills',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Archia',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  const Text(
                    'Check Candidate Skills',
                    style: TextStyle(
                      color: Color(0x80FFFFFF),
                      fontFamily: 'Archia',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Wrap(
                    runSpacing: 8.0,
                    children: [
                      _DetailsSkillWidget(
                        detailsSkillData: DetailsSkillData(
                          name: 'Dart Language',
                          status: false,
                          link: '',
                        ),
                      ),
                      _DetailsSkillWidget(
                        detailsSkillData: DetailsSkillData(
                          name: 'Flutter Framework',
                          status: false,
                          link: '',
                        ),
                      ),
                      _DetailsSkillWidget(
                        detailsSkillData: DetailsSkillData(
                          name: 'SQLite',
                          status: false,
                          link: '',
                        ),
                      ),
                      _DetailsSkillWidget(
                        detailsSkillData: DetailsSkillData(
                          name: 'Hive',
                          status: false,
                          link: '',
                        ),
                      ),
                      _DetailsSkillWidget(
                        detailsSkillData: DetailsSkillData(
                          name: 'BLoC',
                          status: true,
                          link: '',
                        ),
                      ),
                      _DetailsSkillWidget(
                        detailsSkillData: DetailsSkillData(
                          name: 'Clear Architecture',
                          status: false,
                          link: '',
                        ),
                      ),
                      _DetailsSkillWidget(
                        detailsSkillData: DetailsSkillData(
                          name: 'Dio',
                          status: true,
                          link: '',
                        ),
                      ),
                      _DetailsSkillWidget(
                        detailsSkillData: DetailsSkillData(
                          name: 'GetX',
                          status: false,
                          link: '',
                        ),
                      ),
                      _DetailsSkillWidget(
                        detailsSkillData: DetailsSkillData(
                          name: 'Lets celebrate and suck some',
                          status: false,
                          link: '',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _DetailsSkillWidget extends StatelessWidget {
  final DetailsSkillData detailsSkillData;

  const _DetailsSkillWidget({
    Key? key,
    required this.detailsSkillData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFF063A34),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              detailsSkillData.name,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                overflow: TextOverflow.visible,
              ),
              maxLines: 1,
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              splashColor: const Color(0x3303DABB),
              hoverColor: const Color(0x3303DABB),
              highlightColor: const Color(0x3303DABB),
              borderRadius: BorderRadius.circular(6.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: const Color(0xFF03DABB),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Icon(
                  detailsSkillData.status == true
                      ? CupertinoIcons.checkmark_alt
                      : CupertinoIcons.clear_thick,
                  color: const Color(0xFF03DABB),
                  size: 22,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsSkillData {
  late final String name;
  late final bool status;
  late final String link;

  DetailsSkillData({
    required this.name,
    required this.status,
    required this.link,
  });
}
