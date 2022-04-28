import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class PdfView extends StatefulWidget {
  const PdfView({Key? key, required this.pdfUrl}) : super(key: key);
  final String pdfUrl;

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: Colors.white,
        child:PDF(
          swipeHorizontal: true,
          pageFling: true,
          autoSpacing: true,
          enableSwipe: true,
          nightMode: false,

        ).cachedFromUrl(widget.pdfUrl),
      ),

    );
  }
}
