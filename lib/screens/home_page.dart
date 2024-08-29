import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/ThemeManager/theme_mnager.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final themeManager = ThemeManager();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72.0,
        centerTitle: false,
        leading: Icon(
          Icons.arrow_back_ios,
          color: themeManager.getColor(ColorKey.Black),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            height: 1.0,
            thickness: 3.0,
            color: themeManager.getColor(ColorKey.lightGray).withOpacity(0.1),
          ),
        ),
        title: Text(
          "Jeddah Opera House",
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: themeManager.getColor(ColorKey.Black)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Estimated Value",
                        style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: themeManager.getColor(ColorKey.Black))),
                      ),
                      Text(
                        "SAR 500M",
                        style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: themeManager.getColor(ColorKey.Green))),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 20),
                    child: Container(
                      width: double.infinity,
                      height: 199,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/pic.jpg"))),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 21,
                        height: 21,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/pic2.jpg"))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Jeddah, KSA",
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: themeManager.getColor(ColorKey.Black)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
                thickness: 1, color: themeManager.getColor(ColorKey.lightGray)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "A Brief description of the project scope of work, it will be in the form of a paragraph. Lorem Ipsum is simply dummy text of the printing and typesettings",
                    style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: themeManager.getColor(ColorKey.Black)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 46,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: themeManager.getColor(ColorKey.Green)),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Score Project",
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: themeManager.getColor(ColorKey.Green)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  ExpansionTile(
                    iconColor: themeManager.getColor(ColorKey.PrimaryGreen),
                    collapsedIconColor:
                        themeManager.getColor(ColorKey.PrimaryGreen),
                    collapsedBackgroundColor:
                        themeManager.getColor(ColorKey.Green).withOpacity(0.2),
                    backgroundColor:
                        themeManager.getColor(ColorKey.Green).withOpacity(0.2),
                    title: Text(
                      "General Information",
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color:
                                themeManager.getColor(ColorKey.PrimaryGreen)),
                      ),
                    ),
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            ListTile(
                              tileColor: Colors.white,
                              title: Text(
                                'Client Name',
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: themeManager
                                          .getColor(ColorKey.Black)),
                                ),
                              ),
                              trailing: Text(
                                'John Doe',
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: themeManager
                                          .getColor(ColorKey.Black)),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: themeManager
                                  .getColor(ColorKey.lightGray)
                                  .withOpacity(0.6),
                            ),
                            ListTile(
                              tileColor: Colors.white,
                              title: Text(
                                'Client Activity',
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: themeManager
                                          .getColor(ColorKey.Black)),
                                ),
                              ),
                              trailing: Text(
                                'Activity Goes Here',
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: themeManager
                                          .getColor(ColorKey.Black)),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: themeManager
                                  .getColor(ColorKey.lightGray)
                                  .withOpacity(0.6),
                            ),
                            ListTile(
                              tileColor: Colors.white,
                              title: Text(
                                'Client Type',
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: themeManager
                                          .getColor(ColorKey.Black)),
                                ),
                              ),
                              trailing: Text(
                                'Private',
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: themeManager
                                          .getColor(ColorKey.Black)),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: themeManager
                                  .getColor(ColorKey.lightGray)
                                  .withOpacity(0.6),
                            ),
                            ListTile(
                              tileColor: Colors.white,
                              title: Text(
                                'Date of Bid Submission',
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: themeManager
                                          .getColor(ColorKey.Black)),
                                ),
                              ),
                              trailing: Text(
                                '09-09-24',
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: themeManager
                                          .getColor(ColorKey.Black)),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: themeManager
                                  .getColor(ColorKey.lightGray)
                                  .withOpacity(0.6),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ExpansionTile(
                    iconColor: themeManager.getColor(ColorKey.PrimaryGreen),
                    collapsedIconColor:
                        themeManager.getColor(ColorKey.PrimaryGreen),
                    collapsedBackgroundColor:
                        themeManager.getColor(ColorKey.Green).withOpacity(0.2),
                    backgroundColor:
                        themeManager.getColor(ColorKey.Green).withOpacity(0.2),
                    title: Text(
                      "Contract",
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color:
                                themeManager.getColor(ColorKey.PrimaryGreen)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ExpansionTile(
                    iconColor: themeManager.getColor(ColorKey.PrimaryGreen),
                    collapsedIconColor:
                        themeManager.getColor(ColorKey.PrimaryGreen),
                    collapsedBackgroundColor:
                        themeManager.getColor(ColorKey.Green).withOpacity(0.2),
                    backgroundColor:
                        themeManager.getColor(ColorKey.Green).withOpacity(0.2),
                    title: Text(
                      "Scope of Work",
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color:
                                themeManager.getColor(ColorKey.PrimaryGreen)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
