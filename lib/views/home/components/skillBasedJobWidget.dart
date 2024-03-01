import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:flutter/material.dart';

class SkillBasedJobWidget extends StatelessWidget {
  const SkillBasedJobWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
              SizedBox(
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
            child: Icon(
              Icons.arrow_outward_outlined,
            ),
          ),
        ),
      ],
    );
  }
}
