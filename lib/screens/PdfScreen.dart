import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_final_project/models/document_model.dart';
import 'package:our_final_project/screens/reader_screen.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text("Ready Documents",
                    style: GoogleFonts.roboto(
                      color: Color.fromARGB(255, 62, 5, 153),
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Column(
                  children: Document.Doc_List.map((Doc) => ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReaderScreen(Doc)));
                        },
                        title: Text(
                          Doc.Doc_title!,
                          style: GoogleFonts.nunito(
                              color: Color.fromARGB(255, 255, 2, 53),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text("${Doc.page_num!}pages"),
                        trailing: Text(
                          Doc.Doc_date!,
                          style: GoogleFonts.nunito(color: Colors.white),
                        ),
                        leading: Icon(
                          Icons.picture_as_pdf,
                          color: Color.fromARGB(255, 255, 2, 53),
                          size: 32.0,
                        ),
                      )).toList())
            ],
          ),
        ),
      ),
    );
  }
}
