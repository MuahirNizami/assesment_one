import 'package:assesmentproject/utilis/colors.dart';
import 'package:assesmentproject/wiget/button.dart';

import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors().textcolor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create your account",
                  style: TextStyle(
                    color: Appcolors().white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Full Name",
                  style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.w400,
                      color: Appcolors().subtitlecolor),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: height * 0.01),
                  height: height * 0.07,
                  decoration: BoxDecoration(
                    color: Appcolors()
                        .contianercolor, // Light gray background color
                    borderRadius:
                        BorderRadius.circular(height * 0.01), // Rounded corners
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "User Name",
                      hintStyle: TextStyle(
                        color: Appcolors().white.withOpacity(0.75),
                        fontSize: height * 0.022,
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Appcolors().white.withOpacity(0.75),
                        size: height * 0.025,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(height * 0.03),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Email Address",
                  style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.w400,
                      color: Appcolors().subtitlecolor),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: height * 0.01),
                  height: height * 0.07,
                  decoration: BoxDecoration(
                    color: Appcolors()
                        .contianercolor, // Light gray background color
                    borderRadius:
                        BorderRadius.circular(height * 0.01), // Rounded corners
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "mutahirnizami.....@gamil.com",
                      hintStyle: TextStyle(
                        color: Appcolors().white.withOpacity(0.75),
                        fontSize: height * 0.022,
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Appcolors().white.withOpacity(0.75),
                        size: height * 0.025,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(height * 0.03),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.w400,
                      color: Appcolors().subtitlecolor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: height * 0.01),
                      height: height * 0.07,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        color: Appcolors()
                            .contianercolor, // Light gray background color
                        borderRadius: BorderRadius.circular(
                            height * 0.01), // Rounded corners
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "...............",
                          hintStyle: TextStyle(
                            color: Appcolors().white.withOpacity(0.75),
                            fontSize: height * 0.022,
                          ),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Appcolors().white.withOpacity(0.75),
                            size: height * 0.025,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(height * 0.03),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.add_circle_outline,
                        color: Appcolors().white,
                      ),
                    )
                  ],
                ),

                //add conatiner.................
                Container(
                  margin: EdgeInsets.symmetric(vertical: height * 0.01),
                  height: height * 0.07,
                  decoration: BoxDecoration(
                    color: Appcolors().contianercolor,
                    borderRadius: BorderRadius.circular(height * 0.01),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "New Field",
                      hintStyle: TextStyle(
                        color: Appcolors().white.withOpacity(0.75),
                        fontSize: height * 0.022,
                      ),
                      suffix: Icon(
                        Icons.delete,
                        color: Appcolors().white.withOpacity(0.75),
                        size: height * 0.03,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(height * 0.03),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Appcolors().selectedcontainercolor,
                    ),
                    Text(
                      "I have read & agreed to DayTask ",
                      style: TextStyle(color: Appcolors().subtitlecolor),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "Privacy Police Terms & Condition ",
                    style: TextStyle(color: Appcolors().selectedcontainercolor),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.03),
                  child: Appbutton(
                    btncolor: Appcolors().selectedcontainercolor,
                    btnheight: height * 0.07,
                    btnwidth: width,
                    ontap: () {},
                    fontWeight: FontWeight.w400,
                    color: Appcolors().white,
                    text: "SignUp",
                    fontSize: height * 0.025,
                  ),
                ),

                Row(
                  children: const [
                    Expanded(child: Divider(color: Colors.white70)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.white70)),
                  ],
                ),
                const SizedBox(height: 20),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white70),
                    minimumSize:
                        const Size(double.infinity, 50), // Full-width button
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.g_mobiledata, color: Colors.white),
                  label: const Text(
                    "Google",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(color: Colors.white70),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Appcolors().selectedcontainercolor),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
