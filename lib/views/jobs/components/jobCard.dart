import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: primaryColor,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: SizedBox(
                      width: 20,
                      child: Image.asset(
                        'assets/images/google.webp',
                      )),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Flutter Developer',
                style: mediumText(fontSize: 14),
              ),
              const SizedBox(height: 2),
              Text(
                'Google',
                style: normalText(fontSize: 12),
              ),
              const SizedBox(height: 2),
              Text(
                'Bangalore, India',
                style: mediumText(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
