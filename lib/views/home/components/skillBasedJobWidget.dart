import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/constants.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SkillBasedJobWidget extends StatelessWidget {
  const SkillBasedJobWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return OpenContainer(
      openElevation: 0,
      transitionDuration: const Duration(seconds: 1),
      transitionType: ContainerTransitionType.fadeThrough,
      closedBuilder: (context, action) {
        return Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              margin: const EdgeInsets.only(right: 10, top: 15, left: 5),
              width: size.width * 0.6,
              decoration: BoxDecoration(
                  color: Colors.deepPurple[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundColor: primaryColor,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 15,
                              child: SizedBox(
                                  width: 15,
                                  child: Image.asset(
                                    'assets/images/google.webp',
                                  )),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ML Engineer',
                                style: boldText(fontSize: 14),
                              ),
                              Text(
                                'Remote',
                                style: normalText(fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'Python',
                              style: normalText(fontSize: 10),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.orange[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'Keras',
                              style: normalText(fontSize: 10),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 0.7,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('₹4k/mon.', style: mediumText(fontSize: 12)),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: CircleAvatar(
                backgroundColor: inactiveColor.withOpacity(0.7),
                child: const Icon(
                  Icons.arrow_outward_outlined,
                ),
              ),
            ),
          ],
        );
      },
      openBuilder: (context, action) {
        return Stack(
          children: [
            SizedBox(
                height: double.infinity,
                child: Opacity(
                  opacity: 0.4,
                  child: Image.asset(
                    'assets/images/bg.webp',
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.close)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_sharp)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundColor: primaryColor,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: SizedBox(
                                  width: 25,
                                  child: Image.asset(
                                    'assets/images/google.webp',
                                  )),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'ML Engineer',
                                style: heading2,
                              ),
                              Text(
                                'Google',
                                style: mediumText(fontSize: 16),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.location_on),
                              const SizedBox(width: 5),
                              Text(
                                'Remote',
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
                          Row(
                            children: [
                              const Icon(Icons.attach_money_outlined),
                              const SizedBox(width: 5),
                              Text(
                                '4k/month',
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
                          Row(
                            children: [
                              const Icon(Icons.timer_outlined),
                              const SizedBox(width: 5),
                              Text(
                                '3 months',
                                style: normalText(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '300+ Applicants',
                        style: mediumText(fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "5 of 9 ",
                              style: boldText(fontSize: 14),
                              children: [
                                TextSpan(
                                  text: "skills matching",
                                  style: normalText(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Text('Add more', style: normalText(fontSize: 10)),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Job Posted by:',
                        style: heading3.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            child: Icon(
                              Icons.person_4_sharp,
                              color: primaryColor,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nikhil Rana',
                                style: mediumText(fontSize: 16),
                              ),
                              Text(
                                'Program Manager',
                                style: normalText(fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                        child: Divider(),
                      ),
                      const Text(
                        'Job Description',
                        style: heading3,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        lorem,
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      'Apply Now',
                      textAlign: TextAlign.center,
                      style: mediumText(fontSize: 16)
                          .copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
