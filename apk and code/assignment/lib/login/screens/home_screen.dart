import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/cupertino.dart';
// import 'package:encypt_cache/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// ignore: depend_on_referenced_packages

import '../utils/helpers.dart';
import 'authentication_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'VideoHomeScreen';

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFFFDF0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.heart),
          )
        ],
        iconTheme: const IconThemeData(color: Color(0xff4A5D5C)),
        leading: IconButton(
          onPressed: () async {
            HapticFeedback.lightImpact();
            await FirebasePhoneAuthHandler.signOut(context);
            showSnackBar('Logged out successfully!');

            // ignore: use_build_context_synchronously
            Navigator.pushNamedAndRemoveUntil(
              context,
              AuthenticationScreen.id,
              (route) => false,
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                height: width / 2,
                decoration: BoxDecoration(
    
                    boxShadow: const [BoxShadow(offset: Offset(0, 5),color: Colors.black12,blurRadius: 10)],
                image: const DecorationImage(image: AssetImage("images/shop.png"),fit:BoxFit.fill),
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),

              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    "Nisa Hut",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.clock),
                  ),
                  Text("9 am - 4 pm")
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "By Neha & sisters",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff666666)),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("+917788778655",
                  style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.w500,
                      color: Color(0xff888888))),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Chinese food, fast food, Rolls, Spicy food, Fried food,Chowmine, Honey chilly Potato, Burgers, Soups, Momos, Fried rice, Drinks & more",
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.w500,
                      color: Color(0xff888888))),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(),
              ),
              Row(
                children: const [
                  Icon(CupertinoIcons.location_fill,color:Color(0xff644A24)),
                   Text(
                 "Moti Nagar",
                 style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Color(0xff644A24))),
                ],
              ),
                 
              const Text(
                 "33/5, Main merket, behind Aggarwal sweets\nIn front of Khan shoe store",
                 style: TextStyle(
                     fontSize: 16,
                     // fontWeight: FontWeight.w500,
                     color: Color(0xff888888))),
                     const SizedBox(height: 15,),
              Container(
                width: width,
                height: width / 2,
                decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(offset: Offset(0, 5),color: Colors.black12,blurRadius: 10)],
               
                   image: const DecorationImage(image: AssetImage("images/map.png"),fit:BoxFit.fill),
               
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Ratings & Reviews",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff666666)),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("(20 Reviews)",
                  style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.w500,
                      color: Color(0xff888888))),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: width,
                // height: width / 2,
                decoration: BoxDecoration(
                    color: const Color(0xffFEE5BC),
                          boxShadow: const [BoxShadow(offset: Offset(0, 5),color: Colors.black12,blurRadius: 10)],
               
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Shubham Kapoor",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffF9850F)),
                            ),
                            Spacer(),
                            Text(
                              "4.8",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFC056C)),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFC056C),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("5 Days ago",
                            style: TextStyle(
                                fontSize: 20,
                                // fontWeight: FontWeight.w500,
                                color: Color(0xffD29942))),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                            "Food is really tasty and fresh. It's quit spicy but one should must try")
                      ]),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: width,
                // height: width / 2,
                decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(offset: Offset(0, 5),color: Colors.black12,blurRadius: 10)],
               
                    color: const Color(0xffFEE5BC),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Pushpa Yadav",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffF9850F)),
                            ),
                            Spacer(),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFC056C)),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFC056C),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("25 Days ago",
                            style: TextStyle(
                                fontSize: 20,
                                // fontWeight: FontWeight.w500,
                                color: Color(0xffD29942))),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("very yummy food! Must try")
                      ]),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(15),
                dashPattern: const [5, 5],
                color: const Color(0xffFC056C),
                strokeWidth: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(

                    width: width,
                    // height: width / 2,
                    decoration: const BoxDecoration(
                            boxShadow:  [BoxShadow(offset: Offset(0, 5),color: Colors.black12,blurRadius: 10)],
               
                      color: Color(0xffFFCB89),

                      // FC056C
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Want to give your review ?",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffF9850F)),
                          ),
                          const SizedBox(height: 25),
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Color(0xffFC056C),
                            ),
                            onRatingUpdate: (rating) {
                              // print(rating);
                            },
                          )
                        ],
                      ),
                    ),
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
