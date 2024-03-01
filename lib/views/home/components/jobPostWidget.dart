import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JobPostWidget extends StatelessWidget {
  const JobPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 5, bottom: 20, left: 5, top: 15),
          width: size.width * 0.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: Colors.black.withOpacity(0.05),
                  offset: const Offset(0, 10))
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/cover_image.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hybrid',
                          style: normalText(fontSize: 12),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_outline,
                            color: inactiveColor,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Sr. Backend Developer',
                      overflow: TextOverflow.ellipsis,
                      style: boldText(fontSize: 16),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Google',
                            style: mediumText(fontSize: 14),
                          ),
                        ),
                        Text(
                          '3 Days ago',
                          style: normalText(fontSize: 10),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.group,
                              size: 18,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '3k Applicants',
                              style: mediumText(fontSize: 12),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.green,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Active',
                              style: normalText(fontSize: 12)
                                  .copyWith(color: Colors.green),
                            )
                          ],
                        )
                      ],
                    ),
                    // const SizedBox(height: 10),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Expanded(
                    //       child: Container(
                    //           padding: const EdgeInsets.symmetric(vertical: 8),
                    //           decoration: BoxDecoration(
                    //             color: shadeColor,
                    //             borderRadius: BorderRadius.circular(8),
                    //           ),
                    //           child: Text(
                    //             'Apply Now',
                    //             textAlign: TextAlign.center,
                    //             style: mediumText(fontSize: 12),
                    //           )),
                    //     )
                    //   ],
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: CircleAvatar(
            backgroundColor: inactiveColor.withOpacity(0.7),
            child: Icon(Icons.arrow_outward_outlined,),
          ),
        ),
      ],
    );
  }
}
