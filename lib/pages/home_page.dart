import 'package:flashcards_app/pages/flashcards_page.dart';
import 'package:flashcards_app/pages/profile_page.dart';
import 'package:flashcards_app/utilities/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: violet,
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    decoration: BoxDecoration(
                      color: violet,
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 110),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Flashcard Categories',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: violet,
                                padding: const EdgeInsets.symmetric(horizontal: 18),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'View All',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 1,
                            ),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              final categories = [
                                'Mathematics',
                                'Science',
                                'Business',
                                'Computer',
                                'Literature',
                                'Language'
                              ];
                              return _buildCategoryCard(categories[index], context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 10.8 / 100,
              right: 0,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Search Flashcards',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Image.asset('assets/Search.png'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Search Here',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 10,
                          ),
                          hintStyle: TextStyle(
                            color: violet,
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
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
                const SizedBox(height: 35),
                Container(
                  height: 85,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Image.asset('assets/Home.png'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Image.asset(
                          'assets/Profile.png',
                          scale: 0.8,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ProfilePage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: MediaQuery.of(context).size.width * 0.38,
            width: 100,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: violet,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String name, BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CardPage(category: name)),
          );
        },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        // child: GestureDetector(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(color: violet),
              ),
            ],
          ),
        // ),
      ),
    );
  }
}