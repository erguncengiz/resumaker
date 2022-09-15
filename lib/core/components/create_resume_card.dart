import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CreateResumeCard extends StatefulWidget {
  final double? margin;
  final Color firstColor;
  final Color secondColor;

  const CreateResumeCard(
      {super.key,
      this.margin,
      required this.firstColor,
      required this.secondColor});

  @override
  State<CreateResumeCard> createState() => _CreateResumeCardState();
}

class _CreateResumeCardState extends State<CreateResumeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      margin: EdgeInsets.all(widget.margin ?? 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [widget.firstColor, widget.secondColor],
        ),
      ),
      child: Center(
        child: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.transparent,
          child: Text(
            "Create a resume!",
            style: TextStyle(fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
