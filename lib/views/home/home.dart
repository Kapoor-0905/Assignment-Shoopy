import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:crezam_task/views/home/components/jobPostWidget.dart';
import 'package:crezam_task/views/home/components/skillBasedJobWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, Map<String, dynamic>> jobs = {
    'job1': {'title': 'Software Engineer', 'color': Colors.pink[100]},
    'job2': {'title': 'Data Scientist', 'color': Colors.orange[100]},
    'job3': {'title': 'UI/UX', 'color': Colors.indigo[100]},
    'job4': {'title': 'Front-End Developer', 'color': Colors.green[100]},
    'job5': {'title': 'Public Relations', 'color': Colors.purple[100]}
    // Add more entries as needed
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Let\'s find a job\n',
                        style: mediumText(fontSize: 16),
                        children: const [
                          TextSpan(text: "Ashutosh Kapoor", style: heading2)
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 30,
                      child: Icon(
                        Icons.person_4_sharp,
                        color: primaryColor,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: searchBar,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: normalText(fontSize: 14),
                                onChanged: (value) {},
                                onTapOutside: (event) =>
                                    FocusScope.of(context).unfocus(),
                                decoration: searchBarInput,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Wrap(
                    runSpacing: 10,
                    children: List.generate(
                      jobs.length,
                      (index) {
                        final jobKey = jobs.keys.elementAt(index);
                        final jobDetails = jobs[jobKey];
                        return Container(
                          margin: const EdgeInsets.only(right: 5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                              color: jobDetails!['color'],
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            jobDetails['title'],
                            style: mediumText(fontSize: 12),
                          ),
                        );
                      },
                    )
                    // [
                    //   Container(
                    //     margin: const EdgeInsets.only(right: 5),
                    //     padding: const EdgeInsets.symmetric(
                    //         horizontal: 20, vertical: 5),
                    //     decoration: BoxDecoration(
                    //         color: Colors.lime[300],
                    //         borderRadius: BorderRadius.circular(20)),
                    //     child: Text(
                    //       'SDE',
                    //       style: mediumText(fontSize: 12),
                    //     ),
                    //   ),
                    // ],
                    ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Based on your recent searches',
                      style: mediumText(fontSize: 18),
                    ),
                    Text(
                      'View All',
                      style: mediumText(fontSize: 12)
                          .copyWith(color: inactiveColor),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        List.generate(4, (index) => const JobPostWidget()),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Based on your skills',
                      style: mediumText(fontSize: 18),
                    ),
                    Text(
                      'View All',
                      style: mediumText(fontSize: 12)
                          .copyWith(color: inactiveColor),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        4, (index) => const SkillBasedJobWidget()),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Top Recruiters',
                  style: mediumText(fontSize: 18),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        4,
                        (index) => Container(
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                              ),
                              padding: EdgeInsets.all(6),
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 30,
                                child: Image.asset(
                                  'assets/icons/tata.webp',
                                ),
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
