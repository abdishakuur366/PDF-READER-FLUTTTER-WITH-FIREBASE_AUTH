import 'package:flutter/material.dart';
import 'package:our_final_project/models/document_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.Doc, {Key? key}) : super(key: key);
  Document Doc;

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 2, 53),
        title: Text(
          widget.Doc.Doc_title!,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: SfPdfViewer.network(widget.Doc.Doc_url!),
      ),
    );
  }
}
