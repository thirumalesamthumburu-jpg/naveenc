import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

void main() => runApp(
  const MaterialApp(
    home: LocalPhotoCarousel(),
    debugShowCheckedModeBanner: false,
  ),
);

class LocalPhotoCarousel extends StatelessWidget {
  const LocalPhotoCarousel({super.key});

  final List<String> imgList = const [
    'assets/download.jpg',
    'assets/download1.jpg',
    'assets/download2.jpg',
    'assets/download3.jpg',
    'assets/download4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Heartily Congratulation to N"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: 300.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
            ),
            items: imgList.map((assetPath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(assetPath, fit: BoxFit.cover),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          _buildQuoteBox('assets/download.jpg'),
          _buildQuoteBox1('assets/download1.jpg'),
          _buildQuoteBox('assets/download.jpg'),
          _buildQuoteBox3(context, 'assets/download3.jpg'),
          const SizedBox(height: 30),
        ],
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

  Widget _buildQuoteBox(String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: _boxDecoration(),
      child: Row(
        children: [
          _buildImage(imagePath),
          const SizedBox(width: 16),
          const Expanded(child: _QuoteText()),
        ],
      ),
    );
  }

  Widget _buildQuoteBox1(String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: _boxDecoration(),
      child: Row(
        children: [
          const Expanded(child: _QuoteText()),
          const SizedBox(width: 16),
          _buildImage(imagePath),
        ],
      ),
    );
  }

  Widget _buildQuoteBox3(BuildContext context, String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: _boxDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _QuoteText(),
                const SizedBox(height: 12),
                ElevatedButton.icon(
                  onPressed: () => _showSecurityDialog(context),
                  icon: const Icon(Icons.play_circle_fill, size: 18),
                  label: const Text("Unlock Video"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          _buildImage(imagePath),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  Widget _buildImage(String path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(path, width: 90, height: 90, fit: BoxFit.cover),
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
          // --- SHARE BUTTON BLOCKER ---
          // Sits on top right to prevent "Share" and "Watch later" clicks
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
          const Icon(Icons.lock_outline, size: 50, color: Colors.redAccent),
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
              hintText: "Enter  Security Token",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(_isVerified ? "Close" : "Cancel", style: const TextStyle(color: Colors.grey)),
        ),
        if (!_isVerified)
          ElevatedButton(
            onPressed: () {
              if (_tokenController.text == "1123") {
                setState(() => _isVerified = true);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Wrong Token!")));
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            child: const Text("Verify & Play", style: TextStyle(color: Colors.white)),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _tokenController.dispose();
    super.dispose();
  }
}

class _QuoteText extends StatelessWidget {
  const _QuoteText();
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Design is not just what it looks like. Design is how it works.",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text("- Steve Jobs", style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}