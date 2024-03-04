import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:crezam_task/views/home/components/skillBasedJobWidget.dart';
import 'package:crezam_task/views/jobs/components/jobCard.dart';
import 'package:crezam_task/views/jobs/createJob.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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
                  const Text(
                    'Jobs and Internships',
                    style: heading2,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_outline),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const CreateJob()));
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top jobs for you',
                    style: heading3,
                  ),
                  Text(
                    'View more',
                    style: normalText(fontSize: 10),
                  ),
                ],
              ),
              ...List.generate(2, ((index) => JobCard())),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Skill based internships',
                    style: heading3,
                  ),
                  Text(
                    'View more',
                    style: normalText(fontSize: 10),
                  ),
                ],
              ),
              ...List.generate(2, ((index) => JobCard())),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Jobs Applied for',
                    style: heading3,
                  ),
                  Text(
                    'View more',
                    style: normalText(fontSize: 10),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(2, (index) => SkillBasedJobWidget()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
