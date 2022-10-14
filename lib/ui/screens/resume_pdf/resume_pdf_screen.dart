import 'package:change_job/ui/screens/resume_pdf/pdfexport.dart';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

class ResumePDFScreen extends StatelessWidget {
  const ResumePDFScreen({Key? key}) : super(key: key);

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
          title: const Text('Resume Preview'),
        ),
        body: PdfPreview(
          pdfFileName: 'Resume.pdf',
          allowPrinting: false,
          canChangePageFormat: false,
          canDebug: false,
          build: (context) => makePdf(),
        ),
      ),
    );
  }
}
