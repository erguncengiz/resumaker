import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resumaker/core/resources/resources.dart';

import '../../../core/components/create_resume_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Icon(Icons.document_scanner),
        backgroundColor: Resources.basicSecondGradientColor,
      ),
      body: Column(
        children: [
          CreateResumeCard(
              firstColor: Resources.basicFirstGradientColor,
              secondColor: Resources.basicSecondGradientColor,
              margin: 8.r)
        ],
      ),
    );
  }
}
