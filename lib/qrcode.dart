import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: QrGenerator()),
);

class QrGenerator extends StatelessWidget {
  const QrGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    const String data = "https://thirumalesamthumburu-jpg.github.io/naveenc/";

    return Scaffold(
      backgroundColor: Colors.white,
      // Wrap in SingleChildScrollView to solve the "62 pixel overflow"
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF1A237E), width: 4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFC5A059), width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "#ANBUDEN WITH",
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 4,
                      color: const Color(0xFFC5A059).withOpacity(0.8),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Naveen Anna",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF1A237E),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // FittedBox prevents the QR from causing horizontal or vertical overflow
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: QrImageView(
                      data: data,
                      version: QrVersions.auto,
                      size: 300.0,
                      errorCorrectionLevel: QrErrorCorrectLevel.H,
                      gapless: false,
                      eyeStyle: const QrEyeStyle(
                        eyeShape: QrEyeShape.square,
                        color: Color(0xFF1A237E),
                      ),
                      dataModuleStyle: const QrDataModuleStyle(
                        dataModuleShape: QrDataModuleShape.circle,
                        color: Color(0xFF1A237E),
                      ),
                      embeddedImage: const AssetImage('assets/mainphoto.jpg'),
                      embeddedImageStyle: const QrEmbeddedImageStyle(
                        size: Size(60, 60),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "SCAN THE QR  •  FEEL THE THRILL",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 3,
                    width: 40,
                    color: const Color(0xFFC5A059),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
