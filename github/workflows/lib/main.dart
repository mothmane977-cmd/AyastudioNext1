import 'package:flutter/material.dart';

void main() {
  runApp(const AyahStudioNextApp());
}

class AyahStudioNextApp extends StatelessWidget {
  const AyahStudioNextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AyahStudioNext',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0E12),
      ),
      home: const VisualStageScreen(),
    );
  }
}

class VisualStageScreen extends StatefulWidget {
  const VisualStageScreen({super.key});

  @override
  State<VisualStageScreen> createState() => _VisualStageScreenState();
}

class _VisualStageScreenState extends State<VisualStageScreen> {
  bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 360,
          height: 640,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF0A0E12), Color(0xFF131822), Color(0xFF0F3D3E)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: const Color(0x66D4AF37), width: 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ",
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xFFD4AF37),
                  fontFamily: 'Amiri',
                  shadows: [
                    Shadow(color: Color(0xCCD4AF37), blurRadius: 20),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD4AF37),
                  foregroundColor: const Color(0xFF0A0E12),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                onPressed: () {
                  setState(() {
                    _isPlaying = !_isPlaying;
                  });
                },
                child: Text(
                  _isPlaying ? 'إيقاف مؤقت' : 'تشغيل التلاوة',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
