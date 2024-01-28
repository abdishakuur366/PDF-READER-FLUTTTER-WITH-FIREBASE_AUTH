import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Color.fromARGB(145, 102, 0, 255),
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                "Developers info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(children: [
            Container(
              color: Color.fromARGB(248, 251, 189, 1),
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.only(top: 15.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("lib/imageassets/male.png"),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "AliDahir Mohamed Muktar",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 3,
                        right: 50,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ID: C120108",
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Container(
              color: Color.fromARGB(255, 116, 115, 117),
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.only(top: 15.0),
              margin: EdgeInsets.only(top: 10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("lib/imageassets/male.png"),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "Abshir Abukar Abdullahi",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 3,
                        right: 50,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ID: C120709",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Container(
              color: Color.fromARGB(255, 62, 5, 153),
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.only(top: 15.0),
              margin: EdgeInsets.only(top: 10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("lib/imageassets/male.png"),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "Abdullahi Ahmed Mohamed",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 3,
                        right: 50,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ID: C120749",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Container(
              color: Color.fromARGB(255, 255, 7, 139),
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.only(top: 15.0),
              margin: EdgeInsets.only(top: 10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          image: DecorationImage(
                            image: AssetImage("lib/imageassets/Female.png"),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "Safia mohamed Abdirahman",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 3,
                        right: 50,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ID: C120543",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Container(
              color: Color.fromARGB(132, 7, 102, 255),
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.only(top: 15.0),
              margin: EdgeInsets.only(top: 10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 0, right: 20),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          image: DecorationImage(
                            image: AssetImage("lib/imageassets/male.png"),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "Ibrahim Ahmed Bu’ul",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 3,
                        right: 50,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ID: C120891",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ]),
        ],
      ),
    );
  }
}
