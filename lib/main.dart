import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const TributeApp());
}

class TributeApp extends StatelessWidget {
  const TributeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blueAccent),
      home: const TributeScreen(),
    );
  }
}

class TributeScreen extends StatelessWidget {
  const TributeScreen({super.key});

  final List<String> memoryImages = const [
    'assets/download1.jpg',
    'assets/download2.jpg',
    'assets/download3.jpg',
    'assets/download4.jpg',
    'assets/download.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade900, Colors.blue.shade500],
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    "Naveen C – Huge Congratulations!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '“True greatness is not measured by the volume of data he manages, but by the integrity of the man who keeps the foundation strong for the entire team.”',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -40),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage('assets/mainphoto.jpg'),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      children: [
                        const Text(
                          "HYD ✈️ Columbus, Ohio",
                          style: TextStyle(
                            letterSpacing: 4,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            // The Dashed Path
                            Container(
                              width: 300,
                              height: 2,
                              child: Row(
                                children: List.generate(
                                  15,
                                  (index) => Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 2,
                                      ),
                                      height: 2,
                                      color: Colors.blueAccent.withOpacity(0.3),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TweenAnimationBuilder(
                              tween: Tween<double>(begin: -150, end: 150),
                              duration: const Duration(seconds: 40),
                              curve: Curves.easeInOutSine,
                              builder: (context, double value, child) {
                                return Transform.translate(
                                  offset: Offset(value, 0),
                                  child: const FaIcon(
                                    FontAwesomeIcons.plane,
                                    color: Colors.blueAccent,
                                    size: 24,
                                  ),
                                );
                              },
                              onEnd: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "New Latitudes. Same Integrity.",
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Text(
                    "Our Shield and Mentor",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Text(
                      "“To the office, you are a Lead. To the projects, you are an Expert. But to us, you are the heart that turned a workspace into a home and a group of colleagues into a family.”",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(indent: 50, endIndent: 50),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "From Our Hearts to Yours",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  _buildQuoteCard(
                    "Teammate Name 1",
                    "You made the hardest sprints feel like a breeze!",
                    'assets/mainphoto.jpg',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Divider(indent: 50, endIndent: 50),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                "Moments We'll Cherish",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: memoryImages.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              "Building memories together...",
                              style: TextStyle(
                                fontFamily: 'Georgia',
                                fontStyle: FontStyle.italic,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 80),
            const Text("Made with ❤️ by the Whole Team"),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildQuoteCard(String name, String quote, String imagePath) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage(imagePath)),
          const SizedBox(height: 10),
          Text(
            "\"$quote\"",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10),
          Text(
            "- $name",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
