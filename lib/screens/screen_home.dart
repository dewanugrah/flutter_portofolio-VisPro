import 'package:flutter/material.dart';
import 'package:flutter_portofolio/widgets/icon_label_button.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  final phone = '+6285174461525';
  final email = 'dewaanugrahaljasputra@gmail.com';
  final emailSubject = 'Flutter Portofolio Email';
  final emailBody = 'Hello, i like pancakes.';
  final facebook = 'https://www.facebook.com/johan.jianta';

  Widget _buildTextHeader(String label) {
    return Text(
      label,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTextSubHeader(String label) {
    return Text(
      label,
      style: const TextStyle(fontSize: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const Image(
          image: AssetImage('assets/images/foto.jpg'),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextHeader("Dewa Anugrah Aljas Putra"),
              const SizedBox(height: 5),
              _buildTextSubHeader(
                  "Seorang mahasiswa jurusan informatika di uc makassar dengan spesialisasi artificial intelligence"),
              const SizedBox(height: 24),
              _buildTextHeader("Minat"),
              const SizedBox(height: 5),
              _buildTextSubHeader('- Tidur'),
              const SizedBox(height: 16),
              _buildTextSubHeader('- Back End Coding'),
              const SizedBox(height: 16),
              _buildTextSubHeader('- Design UI/UX'),
              const SizedBox(height: 24),
              _buildTextHeader("Pendidikan"),
              const SizedBox(height: 5),
              _buildTextSubHeader('SMK Telkom Makassar'),
              const SizedBox(height: 5),
              _buildTextSubHeader('2018 - 2021'),
              const SizedBox(height: 16),
              _buildTextSubHeader('Ciputra School of Business Makassar'),
              const SizedBox(height: 5),
              _buildTextSubHeader('2022 - sekarang'),
              const SizedBox(height: 24),
              _buildTextHeader("Kontak"),
              const SizedBox(height: 10),
              IconLabelButton(
                  label: email,
                  icon: Icons.email,
                  query: 'mailto:$email?subject=$emailSubject&body=$emailBody'),
              const SizedBox(height: 16),
              IconLabelButton(
                  label: "+62 851-7446-1525",
                  icon: Icons.call,
                  query: 'tel:$phone'),
              const SizedBox(height: 16),
              IconLabelButton(
                  label: "facebook.com/dewaanugrah",
                  icon: Icons.facebook,
                  query: facebook),
            ],
          ),
        ),
      ]),
    );
  }
}
