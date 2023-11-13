import 'package:flutter/material.dart';
import 'package:flutter_portofolio/widgets/project_card.dart';

class ScreenProject extends StatelessWidget {
  const ScreenProject({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ProjectCard(
          title: 'Esport Tournament Tools',
          description: 'Esport Tournament Tools adalah sebuah website yang dapat membantu para pelaku Esport, baik penyelenggara acara, maupun para peserta dan komunitas esport.',
          imageUrl:
              'assets/images/foto-esporttools.jpg',
          projectUrl:
              'https://www.figma.com/file/wGwiA2I5479Tfe6tQ6JX6L/Prototype-SandBox?type=design&node-id=0%3A1&mode=design&t=MbLzT8Q4pBKybP60-1',
        ),
        ProjectCard(
          title: 'Corporate Entrepreneurship',
          description: 'Corporate Entrepreneurship adalah sebuah website untuk memonitoring setiap kegiatan organisasi, keuangan dan lain-lain',
          imageUrl:
              'assets/images/foto-CE.jpeg',
          projectUrl: 'https://github.com/IMT-UC-Makassar/CE_ERP_K1.git',
        ),
        // Add more ProjectCard widgets as needed
      ],
    );
  }
}
