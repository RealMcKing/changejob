import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> makePdf() async {
  final pdf = Document();
  final photo = MemoryImage(
      (await rootBundle.load('assets/images/1.jpg')).buffer.asUint8List());
  final logo = MemoryImage(
      (await rootBundle.load('assets/images/logo.png')).buffer.asUint8List());
  final List<String> skills = ['Flutter', 'Dart', 'UI/UX', 'Dio', 'Git'];

  pdf.addPage(
    Page(
      margin: const EdgeInsets.all(0.0),
      build: (context) {
        return Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32.0),
              width: double.infinity,
              height: 200,
              color: const PdfColor(0.1, 0.2, 0.1, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '+380 00 00 00 000',
                        style: const TextStyle(
                          color: PdfColor(1, 1, 1, 1),
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'NAME \nSURNAME',
                        style: const TextStyle(
                          color: PdfColor(1, 1, 1, 1),
                          fontSize: 48.0,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                  ClipRRect(
                    child: Image(photo,
                        height: 150, width: 100, fit: BoxFit.cover),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Summaty',
                    style: const TextStyle(
                      color: PdfColor(0, 0, 0, 1),
                      fontSize: 24.0,
                    ),
                  ),
                  Divider(
                    color: const PdfColor(0, 0, 0, 1),
                  ),
                  Text(
                    'Skilled Mobile Developer with 5 years of strong experience in mobile app development. Experienced with all stages of the development cycle for dynamic mobile projects. Well-versed in numerous programming languages including Dart, Swift, Objective-C, Java, JSON and SQL. Constantly striving to learn new technologies and look to ways to better myself in this rapidly changing industry. Hard working, detail oriented and able to multi-task effectively.',
                    style: const TextStyle(
                      color: PdfColor(0, 0, 0, 1),
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Skills Highlight',
                    style: const TextStyle(
                      color: PdfColor(0, 0, 0, 1),
                      fontSize: 24.0,
                    ),
                  ),
                  Divider(
                    color: const PdfColor(0, 0, 0, 1),
                  ),
                  GridView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                    ),
                    childAspectRatio: 0.05,
                    mainAxisSpacing: 8.0,
                    crossAxisCount: 2,
                    children: skills
                        .map(
                          (item) => Text(
                            ' - $item',
                            style: const TextStyle(
                              color: PdfColor(0, 0, 0, 1),
                              fontSize: 14.0,
                            ),
                          ),
                        )
                        .toList()
                        .cast<Widget>(),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Education',
                    style: const TextStyle(
                      color: PdfColor(0, 0, 0, 1),
                      fontSize: 24.0,
                    ),
                  ),
                  Divider(
                    color: const PdfColor(0, 0, 0, 1),
                  ),
                  Text(
                    'Bachelor of Science: Computer Information Systems - 2014',
                    style: const TextStyle(
                      color: PdfColor(0, 0, 0, 1),
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image(logo, height: 24, width: 24),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );
  return pdf.save();
}
