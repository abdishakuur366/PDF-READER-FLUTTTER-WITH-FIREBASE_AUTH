import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:our_final_project/firebase_options.dart';
import 'package:our_final_project/models/MyNavHeader.dart';
import 'package:our_final_project/screens/AboutUs.dart';
import 'package:our_final_project/screens/PdfScreen.dart';
import 'package:our_final_project/screens/dashboard.dart';
import 'package:our_final_project/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _hompageState();
}

class _hompageState extends State<homepage> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = dashboard();
    } else if (currentPage == DrawerSections.ReadPdf) {
      container = PdfScreen();
    } else if (currentPage == DrawerSections.AboutUs) {
      container = AboutUs();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 5, 153),
        foregroundColor: Colors.white,
        title: Text(
          "Pdf Reader",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              MyNavHeader(),
              myListDrawer(),
            ],
          ),
        )),
      ),
    );
  }

  Widget myListDrawer() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(
            2,
            "Read Pdf",
            Icons.picture_as_pdf,
            currentPage == DrawerSections.ReadPdf ? true : false,
          ),
          menuItem(
            3,
            "About Us",
            Icons.people_alt_outlined,
            currentPage == DrawerSections.AboutUs ? true : false,
          ),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.ReadPdf;
            } else if (id == 3) {
              currentPage = DrawerSections.AboutUs;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Color.fromARGB(255, 255, 2, 53),
                ),
              ),
               Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 2, 53),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  ReadPdf,
  AboutUs,
}
