import 'package:doc_doc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndTitle extends StatelessWidget {
  const DoctorImageAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_with_low_opacity.svg'),
        Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.white.withAlpha(0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.14, 0.4]),
            ),
            child: Image.asset('assets/images/onboarding_doctor.png')),
        Positioned(
          bottom: 30,
          left: 20,
          right: 20,
          child: Text(
            'Best Doctor Appointment App',
            textAlign: TextAlign.center,
            style: AppStyles.font32MainBlueBold,
          ),
        ),
      ],
    );
  }
}
