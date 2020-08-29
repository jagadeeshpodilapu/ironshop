import 'package:flutter/material.dart';
import 'package:ironshop/OrderPage.dart';
import 'package:ironshop/StyleScheme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.grey,
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Center(
          child: Text(
            "IRON YARD",
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Color(0xfff1ffff),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('BLESS THIS MESS', style: headingStyle),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'We pick your clothes and give \n them a new look ',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/bannerImg.png'))),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'SERVICES',
                style: headingStyle,
              ),
              Container(
                height: 200,
                color: Color(0xfff1ffff),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/servicesImg.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'IRON ONLY',
                              style: headingStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: openOrderPage,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: gradientStyle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Text(
                                  'Place Order',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0xfff1ffff),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'AVAILABILITY',
                          style: contentStyle,
                        ),
                        Text(
                          '  AVAILABLE',
                          style: contentStyle.copyWith(color: Colors.blue),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('We are Open from 7AM to 9PM')
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'CHECK THE TIME ESTIMATION',
                      style: contentStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('You can check Time Estimations with Prices'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      gradient: gradientStyle,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            title: Text("Track Order"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text("My Orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text("Profile"),
          )
        ],
      ),
    );
  }

  void openOrderPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OrderPage()));
  }
}
