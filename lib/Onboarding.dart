import 'package:flutter/material.dart';

import 'LoginPage.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding(),
    );
  }
}

class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentPage = 0;
  PageController _pageController = new PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/images/bg.png'))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 430,
                child: PageView(
                  controller: _pageController,
                  children: <Widget>[
                    onBoardPage("onBoard1", "Choose Clothes"),
                    onBoardPage("onBoard2", "Schedule pickup "),
                    onBoardPage("onBoard3", "Get Best Iron Service"),
                    onBoardPage("onBoard2", "Get on Time Delivery"),
                    onBoardPage("onBoard4", "Pay later ")
                  ],
                  onPageChanged: (value) => {
                    setCurrentPage(value),
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) => getIndicator(index)),
              )
            ],
          ),
          SizedBox(height: 20,),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: InkWell(
              onTap: changePage,
              child: Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xfff3953b), Color(0xffe57509)],
                      stops: [0, 1],
                      begin: Alignment.topCenter,
                    )),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void changePage() {
    if (currentPage == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } else {
      _pageController.animateToPage(currentPage + 1,
          duration: Duration(microseconds: 200), curve: Curves.linear);
    }
  }

  setCurrentPage(int val) {
    currentPage = val;

    setState(() {});
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: Duration(microseconds: 100),
      height: 10,
      width: (currentPage == pageNo) ? 10 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: (currentPage == pageNo) ? Colors.orange : Colors.grey),
    );
  }

  Column onBoardPage(String img, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$img.png'),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "$title",
            style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'robo',
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
