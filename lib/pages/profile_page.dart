import 'package:flashcards_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flashcards_app/utilities/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: violet,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 50),
                    decoration: BoxDecoration(
                        color: violet,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(20))),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      spacing: 10,
                      children: [
                        SizedBox(
                          height: 110,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            /// Search FlashCards
            Positioned(
              top: MediaQuery.of(context).size.width * 0.28,
              right: MediaQuery.of(context).size.width * 0 / 100,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3) // changes position of shadow
                            ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Thunder.png',
                              scale: 0.9,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '37',
                                  style: TextStyle(fontSize: 22, color: violet, fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Flashcards Added',
                                  style: TextStyle(fontSize: 11, color: violet),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 0.3,
                        height: 42,
                        child: Container(
                          color: violet,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Time.png',
                              scale: 0.9,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '122+',
                                  style: TextStyle(fontSize: 22, color: violet, fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Hours Spent',
                                  style: TextStyle(fontSize: 11, color: violet),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 120,
            color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 85,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3) // changes position of shadow
                        ),
                  ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assets/Home.png',
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Image.asset(
                          'assets/Profile.png',
                          scale: 0.8,
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfilePage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Add FlashCards
          Positioned(
            top: MediaQuery.of(context).size.width * 0,
            right: MediaQuery.of(context).size.width * 0.38,
            width: 100,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3) // changes position of shadow
                        ),
                  ]),
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: violet,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3) // changes position of shadow
                            ),
                      ]),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Container flashcardCategory({required String name, context}) {
  return Container(
    width: (MediaQuery.of(context).size.width) / 3.7,
    height: (MediaQuery.of(context).size.width) / 3.7,
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3) // changes position of shadow
            ),
      ],
    ),
    child: Column(
      spacing: 15,
      children: [
        Image.asset('assets/$name.png'),
        Text(
          name,
          style: TextStyle(color: violet),
        )
      ],
    ),
  );
}

/*


 */
