import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.settings)),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      child: Icon(
                        Icons.person_4_sharp,
                        color: primaryColor,
                        size: 40,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Ashutosh Kapoor',
                      style: heading2,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'ashutoshkapoor8965@gmail.com',
                      style: mediumText(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Organizer Flutter Simulate : Doon | Frontend Developer at Curiosify | Flutter Developer 💙 | Collaboration Manager OPEN Community',
                style: normalText(fontSize: 12),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Feb 28, 2023', style: mediumText(fontSize: 16)),
                      const SizedBox(width: 5),
                      Text(
                        'Joined',
                        style: normalText(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      color: inactiveColor,
                    ),
                  ),
                  Column(
                    children: [
                      Text('12', style: mediumText(fontSize: 16)),
                      const SizedBox(width: 5),
                      Text(
                        'Applied to',
                        style: normalText(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      color: inactiveColor,
                    ),
                  ),
                  Column(
                    children: [
                      Text("59", style: mediumText(fontSize: 16)),
                      const SizedBox(width: 5),
                      Text(
                        'Profile Views',
                        style: normalText(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              const Text(
                'Experience',
                style: heading3,
              ),
              const SizedBox(height: 12),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[50],
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Company Name',
                              style: mediumText(fontSize: 12),
                            ),
                            Text(
                              'Sept, 2023 - Nov, 2023',
                              style: mediumText(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Software Developer Intern',
                          style: mediumText(fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Skills: Django, Flutter, APIs',
                          style: mediumText(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green[200],
                        ),
                        child: Text(
                          '1',
                          style: normalText(fontSize: 12),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
