import 'package:flutter/material.dart';
import 'iconsgenerate.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // This stack contain two child one contains whole ui and other is used for guide icon
        children: <Widget>[
          Column(
            // this column contains two containers top and bottom
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Top container
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 2.6,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('images/lond.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Color(0xaa000000),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //top icons
                    children: <Widget>[
                      SafeArea(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(80)),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Chatpage');
                              },
                              icon: const Icon(
                                Icons.messenger_outline_rounded,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SafeArea(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(80)),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Settings');
                              },
                              icon: const Icon(
                                Icons.menu_open,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //column for profile image
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3.4,
                      ),
                      Center(
                        child: Container(
                          width: 140.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('images/sample.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(80.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 5.0,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "OLiver",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Poppins"),
                      ),
                      const Text(
                        "London",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "I am an enthusiastic Programmer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 4,
                            color: Color(0xffDAE1E7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const TextButton(
                              onPressed: null,
                              child: ListTile(
                                leading: Text(
                                  'Lorem ipsum',
                                  style: TextStyle(
                                      fontFamily: 'Source Sans Pro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2B4F95)),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xff2B4F95),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 4,
                            color: Color(0xffDAE1E7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const TextButton(
                              onPressed: null,
                              child: ListTile(
                                leading: Text(
                                  'Lorem ipsum',
                                  style: TextStyle(
                                      fontFamily: 'Source Sans Pro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2B4F95)),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xff2B4F95),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //bottom container
              SafeArea(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 11.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color(0xfff0eded),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: <Widget>[
                              Iconsgenerate(
                                imagePath: "images/icon2.png",
                                width: 50,
                                label: "Lorem",
                                path: () {},
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Iconsgenerate(
                            imagePath: "images/icon3.png",
                            width: 50,
                            label: "Lorem",
                            path: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          // for guide icon
          Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.15,
              ),
              Center(
                child: Iconsgenerate(
                  width: 80,
                  label: "Lorem",
                  path: () {},
                  imagePath: "images/icon1.png",
                  borderWidth: 6.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
