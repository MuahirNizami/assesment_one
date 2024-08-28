import 'package:assesmentproject/utilis/colors.dart';
import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors().textcolor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.03, horizontal: width * 0.04),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                          color: Appcolors().selectedcontainercolor,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Fazil Laghari",
                      style: TextStyle(
                          color: Appcolors().selectedcontainercolor,
                          fontSize: height * 0.04,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                CircleAvatar(
                  child: Image.asset("images/profileimage.png"),
                )
              ],
            ),

            // search bar................
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.05, bottom: height * 0.02),
              child: Row(
                children: [
                  // Search bar
                  Expanded(
                    child: Container(
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        color: Appcolors()
                            .contianercolor, // Light gray background color
                        borderRadius: BorderRadius.circular(
                            height * 0.01), // Rounded corners
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search tasks",
                          hintStyle: TextStyle(
                            color: Appcolors().subtitlecolor.withOpacity(0.75),
                            fontSize: height * 0.02,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Appcolors().subtitlecolor.withOpacity(0.75),
                            size: height * 0.025,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(height * 0.03),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.04),
                  Container(
                    child: Icon(
                      Icons.adjust,
                      color: Appcolors().white,
                    ),
                  )
                ],
              ),
            ),
            // second row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Completed Tasks",
                  style: TextStyle(
                      color: Appcolors().white,
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: height * 0.025,
                          color: Appcolors().selectedcontainercolor),
                    ))
              ],
            ),
            Container(
              height: height * 0.3,
              width: width,
              color: Appcolors().selectedcontainercolor,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    color: Appcolors().selectedcontainercolor,
                    height: height * 0.25,
                    width: width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Real Estate\nWebsite\nDesign",
                          style: TextStyle(
                              fontSize: height * 0.035,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Team members",
                              style: TextStyle(
                                  fontSize: height * 0.02,
                                  color: Appcolors().subtitlecolor),
                            ),
                            Stack(
                              children: [
                                CircleAvatar(
                                  maxRadius: height * 0.01,
                                  child: Image.asset("images/profileimage.png"),
                                ),
                                Positioned(
                                    left: width * 0.01,
                                    child: CircleAvatar(
                                      maxRadius: height * 0.01,
                                      child: Image.asset(
                                          "images/profileimage.png"),
                                    )),
                                Positioned(
                                    left: width * 0.02,
                                    child: CircleAvatar(
                                      maxRadius: height * 0.01,
                                      child: Image.asset(
                                          "images/profileimage.png"),
                                    )),
                                Positioned(
                                    top: width * 0.03,
                                    child: CircleAvatar(
                                      maxRadius: height * 0.01,
                                      child: Image.asset(
                                          "images/profileimage.png"),
                                    ))
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Completed",
                                style: TextStyle(
                                    fontSize: height * 0.015,
                                    color: Appcolors().subtitlecolor)),
                            Text(
                              "100%",
                              style: TextStyle(
                                  fontSize: height * 0.015,
                                  color: Appcolors().subtitlecolor),
                            )
                          ],
                        ),
                        SizedBox(
                          width: width,
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(height * 0.01),
                            value: 4.5,
                            color: Appcolors().contianercolor,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
