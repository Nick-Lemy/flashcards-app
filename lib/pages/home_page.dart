import 'package:flashcards_app/utilities/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                            BorderRadius.vertical(bottom: Radius.circular(30))),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Flashcard Categories',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: violet,
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                onPressed: () {},
                                child: Text('View All', style: TextStyle(color: Colors.white),),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),

            /// Search FlashCards
            Positioned(
              top: MediaQuery.of(context).size.width * 17.8 / 100,
              right: MediaQuery.of(context).size.width * 0 / 100,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 30, vertical: 25),
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
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Column(
                    spacing: 12,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Search Flashcards',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Image.asset('assets/Search.png'),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            hintText: 'Search Here',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            hintStyle: TextStyle(
                                color: violet,
                                fontWeight: FontWeight.w300,
                                fontSize: 14)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: ,
    );
  }
}
