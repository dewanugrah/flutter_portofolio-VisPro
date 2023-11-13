import 'package:flutter/material.dart';
import 'package:flutter_portofolio/widgets/project_card.dart';

class ScreenAbout extends StatelessWidget {
  const ScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ProjectCard(
          title: 'UKM Fest 23',
          description: 'UKM Fest adalah sebuah acara yang diadakan oleh Biro Mahasiswa dan Alumni (BMA) di UC Makassar. '
              'Event ini bertujuan untuk memperkenalkan UKM - UKM apa saja yang ada di UC Makassar',
          imageUrl:
              'assets/images/foto-ukmfest23.jpg',
          projectUrl:
              'https://www.instagram.com/reel/CzcuP7IPe8Q/?igshid=bjEyNThqZnQ4M3Vs ',
        ),
        ProjectCard(
          title: 'OWeek',
          description: 'OWeek adalah sebuah acara yang bertujuan untuk memperkenalkan lingkungan dan tradisi baik yang ada di UC Makassar kepada Mahasiswa Baru setiap tahunnya',
          imageUrl:
          'assets/images/foto-oweek23.png',
          projectUrl: 'https://www.instagram.com/p/Cvr15eCvVZu/?igshid=NXg0cmVvZ25kMG4x',
        ),
        // Add more ProjectCard widgets as needed
      ],
    );
  }
}
