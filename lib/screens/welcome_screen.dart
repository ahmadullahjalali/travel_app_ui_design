import 'package:flutter/material.dart';
import 'package:travel_app_ui_design/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "the world!",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.w400,
                    fontSize: 35,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document.",
                  style: TextStyle(
                    // color: Colors.white.withOpacity(0.7),
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => HomePage()),
                      ),
                    );
                  },
                  child: Ink(
                    // color: Colors.white,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 60,
                      weight: (900),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
