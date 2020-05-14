import 'package:flutter/material.dart';
import 'package:netflix_clone/Style/Style.dart';
import 'package:netflix_clone/Widget/QuestionBox.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget footerText(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: ThemeText.footerText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var totalHeigh = MediaQuery.of(context).size.height;
    var totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: totalHeigh,
                  width: totalWidth,
                  child: ClipRRect(
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage("images/home.jfif"),
                    ),
                  ),
                ),
                Container(
                  height: totalHeigh,
                  width: totalWidth,
                  color: Colors.black54,
                  child: Column(
                    children: <Widget>[
                      //First Element
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("images/logo.png"),
                              ),
                            ),
                            Spacer(),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              color: Color(0xffE50914),
                              onPressed: () {},
                              child: Text(
                                "Sign In",
                                style: ThemeText.signInButton,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: totalHeigh * 0.23,
                      ),

                      //Big Ttitle
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "Unlimited movies, TV\nshows, and more.",
                          textAlign: TextAlign.center,
                          style: ThemeText.bigText,
                        ),
                      ),

                      Text(
                        "Watch anywhere. Cancel anytime.\n",
                        textAlign: TextAlign.center,
                        style: ThemeText.smallText,
                      ),

                      Container(
                        width: totalWidth * 0.53,
                        height: totalHeigh * 0.085,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                height: double.infinity,
                                width: double.infinity,
                                color: Colors.white,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "  Email address",
                                      hintStyle: ThemeText.inputtextfield),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                height: double.infinity,
                                width: double.infinity,
                                color: Color(0xffE40914),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Text(
                                        "Try for ₹ 199 ".toUpperCase(),
                                        style: ThemeText.boxTitle,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          "Ready to watch? Enter your email to create or access your account.",
                          textAlign: TextAlign.center,
                          style: ThemeText.smallText2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              height: 5.0,
              color: Color(0xff222222),
            ),

            //Second Continer
            Container(
              height: totalHeigh * 0.72,
              width: totalWidth,
              color: Color(0xff000000),
              child: Row(
                children: <Widget>[
                  Container(
                    width: totalWidth / 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Enjoy on your TV.",
                              style: ThemeText.bigText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "Watch on smart TVs, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray players and more.",
                                  style: ThemeText.smallText,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: totalWidth / 2,
                    child: Image(
                      image: AssetImage("images/pic1.png"),
                    ),
                  ),
                ], 
              ),
            ),

            Container(
              height: 5.0,
              color: Color(0xff222222),
            ),

            //third Continer
            Container(
              height: totalHeigh * 0.72,
              width: totalWidth,
              color: Color(0xff000000),
              child: Row(
                children: <Widget>[
                  Container(
                    width: totalWidth / 2,
                    child: Image(
                      image: AssetImage("images/pic2.jpg"),
                    ),
                  ),
                  Container(
                    width: totalWidth / 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "Download your shows to watch offline.",
                                  style: ThemeText.bigText,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "Save your favourites easily and always have something to watch.",
                                  style: ThemeText.smallText,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 5.0,
              color: Color(0xff222222),
            ),

            //fourth Continer
            Container(
              height: totalHeigh * 0.72,
              width: totalWidth,
              color: Color(0xff000000),
              child: Row(
                children: <Widget>[
                  Container(
                    width: totalWidth / 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Watch everywhere.",
                              style: ThemeText.bigText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV without paying more.",
                                  style: ThemeText.smallText,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: totalWidth / 2,
                    child: Image(
                      image: AssetImage("images/pic3.png"),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 5.0,
              color: Color(0xff222222),
            ),

            Container(
              width: totalWidth,
              color: Color(0xff000000),
              height: totalHeigh * 1.20,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36.0),
                    child: Text(
                      "Frequently Asked Questions",
                      style: ThemeText.bigText,
                    ),
                  ),
                  QuestionBox("What is Netflix ?"),
                  QuestionBox("How much dose Netflix cost?"),
                  QuestionBox("Where can I watch?"),
                  QuestionBox("How to I cancel?"),
                  QuestionBox("What can I watch on Netflix?"),
                  SizedBox(
                    height: totalHeigh * 0.08,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      width: totalWidth * 0.53,
                      height: totalHeigh * 0.085,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: double.infinity,
                              width: double.infinity,
                              color: Colors.white,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "  Email address",
                                    hintStyle: ThemeText.inputtextfield),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              height: double.infinity,
                              width: double.infinity,
                              color: Color(0xffE40914),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Text(
                                      "Try for ₹ 199 ".toUpperCase(),
                                      style: ThemeText.boxTitle,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Ready to watch? Enter your email to create or access your account.",
                      textAlign: TextAlign.center,
                      style: ThemeText.smallText2,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 5.0,
              color: Color(0xff222222),
            ),

            Container(
              height: totalHeigh / 2,
              width: totalWidth,
              color: Color(0xff000000),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "Questions? Call 000-800-040-1843",
                        style: ThemeText.footerText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("FAQ"),
                            footerText("Investor Relations"),
                            footerText("Privacy"),
                            footerText("Speed Test"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("Help Centre"),
                            footerText("Jobs"),
                            footerText("Cookie Preferences"),
                            footerText("Legal Notices"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("Account"),
                            footerText("Ways to Watch"),
                            footerText("Corporate Information"),
                            footerText("Netflix Originals"),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            footerText("Media Centre"),
                            footerText("Terms of Use"), 
                            footerText("Contact Us"),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "Netflix India",
                        style: ThemeText.footerText,
                      ),
                    ), 

                    Center(
                      child: Text(
                        "© Created By Tushar Nikam",
                        style: ThemeText.footerText,
                      ),
                    )
                  ],
                ),

                
              ),
            )

          ],
        ),
      ),
    );
  }
}
