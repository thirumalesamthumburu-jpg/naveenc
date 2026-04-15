import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

void main() {
  runApp(const TributeApp());
}

class TributeApp extends StatelessWidget {
  const TributeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naveen C',
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
    'assets/download.jpg',
    'assets/download5.jpg',
    'assets/download6.jpg',
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
                  FlightPathAnimation(),
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
                "#Anbuden - From Our Hearts to Yours",
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
                    "Your's Subbu",
                    "I’m really happy for you, brother. You truly deserve this opportunity. At the same time, I won’t lie—it feels a little heavy for me because we’ve been working together on the same project and I’ll miss that. Still, seeing you grow makes me proud. Go make the most of it and don’t forget us here...",
                    'assets/subbuanna.jpg',
                  ),
                  _buildQuoteCard(
                    "Your's Naveen",
                    "More than a lead, you’ve always been like a brother and a true friend to me. I’ve learned so much from you, both professionally and personally. Seeing you get this onsite opportunity makes me genuinely proud and happy. You truly deserve every bit of this success. Wishing you an amazing journey ahead filled with growth and great experiences. Go shine and make it count, bro!",
                    'assets/naveen.jpg',
                  ),
                  _buildQuoteCard(
                    "Pavi",
                    "Working with you was more than just a job—it felt like being part of a family. Your kindness and encouragement made every day easier and better. I’m truly grateful for all the lessons, support, and memories. Saying goodbye is hard, but I wish you nothing but happiness and success ahead.",
                    'assets/pavithra.jpg',
                  ),
                  _buildQuoteCard(
                    "Deepika",
                    "Its been a very short journey that i travelled with you but had lifetime memories throughout ❤️ You own me like your own sister and which made me feel so comfortable to chill with you all the time (Truly a BROTHER from another MOTHER 🫶) Together we had unforgettable moments but will always stay in my heart forever I wish you all the very best for your bright future and keeping growing in every aspect. I’m gonna MISS YOU Aniyyaaaaaaaaaaaa❤️",
                    'assets/deepika.jpg',
                  ),
                  _buildQuoteCard(
                    "Vamsi",
                    "Having you as a lead was great, but having you as my Anna means even more. You’ve always been there with support, advice, and encouragement. This onsite opportunity is proof of your dedication and hard work. I feel genuinely proud and happy for you. Wishing you a successful and memorable journey ahead. Keep inspiring us always, Anna",
                    'assets/vamsi.jpg',
                  ),
                  _buildQuoteCard(
                    "Dharani",
                    "Thanks Boss.",
                    'assets/dharani1.jpg',
                  ),
                  _buildQuoteThiruCard(
                    "Your's Thiru",
                    "My parents gave me life, and my teachers gave me knowledge. ダラニ taught me the meaning of love and care, and Subbu Anna & Rajesh Anna showed me the spirit of sportsmanship... But you — you taught me what is life and how to truly live, guiding me through real-world struggles with your own life as an example... I can never forget what you’ve done for me. They say that in our final seven minutes, our entire lives flash before us... if that’s true, I know you will be there for most of it. You are the brother of my soul, the strongest bond I have ever known. Thank you for everything. We are going to miss you more than words can say. Please, never forget us. As you said, one day will surely come for you... I am waiting for that one day only. keep smile... I’ve prepared a special surprise for you. When you’re ready, please unlock it...",
                    'assets/thiru1.jpg',
                    context,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Divider(indent: 50, endIndent: 50),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_awesome, size: 11),
                  Text(
                    " Cherished Moments ",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.auto_awesome, size: 11),
                ],
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
                              "The memories we built together...",
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
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: const BoxDecoration(
                color: Color(
                  0xFF0D1117,
                ), // GitHub's signature dark background color
                border: Border(
                  top: BorderSide(color: Colors.white10, width: 0.5),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "DEVELOPED BY THIRU",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.code,
                        color: Colors.blueAccent,
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "© 2026 | Hosted with GitHub Pages",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 11,
                          fontFamily: 'Courier', // Gives it a tech/coding look
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 2,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSecurityDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const SecurityVideoPopup(),
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

  Widget _buildQuoteThiruCard(
    String name,
    String quote,
    String imagePath,
    BuildContext context,
  ) {
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
          const SizedBox(height: 12),
          // ElevatedButton.icon(
          //   onPressed: () => _showSecurityDialog(context),
          //   icon: const Icon(Icons.play_circle_fill, size: 18),
          //   label: const Text("Unlock the Surprise"),
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.redAccent,
          //     foregroundColor: Colors.white,
          //   ),
          // ),
          //AttractiveUnlockButton(),
          _buildAttractiveSmallButton(context),
        ],
      ),
    );
  }

  Widget _buildAttractiveSmallButton(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 1.0, end: 1.05),
      duration: const Duration(milliseconds: 1500),
      curve: Curves.easeInOutSine,
      builder: (context, scale, child) {
        return Transform.scale(
          scale: scale, // Subtle "breathing" scale
          child: child,
        );
      },
      // The actual button stays small and clean
      child: ElevatedButton.icon(
        onPressed: () => _showSecurityDialog(context),
        icon: const Icon(Icons.auto_awesome, size: 11), // Smaller, modern icon
        label: const Text(
          "unlock",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 4,
          shadowColor: Colors.redAccent.withOpacity(0.5),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: const StadiumBorder(), // Elegant pill shape
          tapTargetSize:
              MaterialTapTargetSize.shrinkWrap, // Minimizes hit area padding
        ),
      ),
    );
  }
}

class FlightPathAnimation extends StatefulWidget {
  const FlightPathAnimation({super.key});

  @override
  State<FlightPathAnimation> createState() => _FlightPathAnimationState();
}

class _FlightPathAnimationState extends State<FlightPathAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
    _animation = Tween<double>(begin: -1.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxWidth = constraints.maxWidth > 600
            ? 500
            : constraints.maxWidth * 0.8;

        return Column(
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
            SizedBox(
              width: maxWidth,
              height: 40,
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: List.generate(
                          20,
                          (index) => Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              height: 1,
                              color: Colors.blueAccent.withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(_animation.value, 0),
                        child: const Icon(
                          Icons.flight_takeoff,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                      ),
                    ],
                  );
                },
              ),
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
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

class SecurityVideoPopup extends StatefulWidget {
  const SecurityVideoPopup({super.key});

  @override
  State<SecurityVideoPopup> createState() => _SecurityVideoPopupState();
}

class _SecurityVideoPopupState extends State<SecurityVideoPopup> {
  final TextEditingController _tokenController = TextEditingController();
  bool _isVerified = false;
  late YoutubePlayerController _ytController;

  @override
  void initState() {
    super.initState();
    _ytController = YoutubePlayerController.fromVideoId(
      videoId: '7gwZVVKXPDY',
      autoPlay: true,
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true, // FULL SCREEN ENABLED
        mute: false,
        strictRelatedVideos: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      contentPadding: _isVerified ? EdgeInsets.zero : const EdgeInsets.all(20),
      content: _isVerified
          ? Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: YoutubePlayer(controller: _ytController),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 140,
                    height: 55,
                    color: Colors.transparent,
                    child: GestureDetector(
                      onTap: () {}, // Swallows the tap event
                    ),
                  ),
                ),
              ],
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.lock_outline,
                  size: 50,
                  color: Colors.redAccent,
                ),
                const SizedBox(height: 15),
                const Text(
                  "Enter Security Token",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: _tokenController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "enter D b security toke N ",
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            _isVerified ? "Close" : "Cancel",
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        if (!_isVerified)
          ElevatedButton(
            onPressed: () {
              if (_tokenController.text == "1123") {
                setState(() => _isVerified = true);
              } else {
                _showErrorPopup(context);
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            child: const Text(
              "Verify & Play",
              style: TextStyle(color: Colors.white),
            ),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _tokenController.dispose();
    super.dispose();
  }

  void _showErrorPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // User can't tap away
      builder: (BuildContext context) {
        // Auto-close after 3 seconds
        Future.delayed(const Duration(seconds: 2), () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        });

        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.error_outline, color: Colors.red, size: 50),
              SizedBox(height: 15),
              Text(
                "Wrong Token!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(
                "Please think and try again for 4 digit token.",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}

class AttractiveUnlockButton extends StatefulWidget {
  const AttractiveUnlockButton({super.key});

  @override
  State<AttractiveUnlockButton> createState() => _AttractiveUnlockButtonState();
}

class _AttractiveUnlockButtonState extends State<AttractiveUnlockButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.redAccent.withOpacity(0.4 * _controller.value),
                blurRadius: 15,
                spreadRadius: 2 * _controller.value,
              ),
            ],
          ),
          child: child,
        );
      },
      child: ElevatedButton.icon(
        onPressed: () => _showSecurityDialog(context),
        icon: const Icon(
          Icons.stars_rounded,
          size: 22,
        ), // Swapped for a "surprise" vibe
        label: const Text(
          "UNLOCK THE SURPRISE",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
          shape: StadiumBorder(), // Modern rounded look
          elevation: 0, // Handled by the Container shadow
        ),
      ),
    );
  }

  void _showSecurityDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const SecurityVideoPopup(),
    );
  }
}
