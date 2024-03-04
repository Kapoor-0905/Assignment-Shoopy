import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:crezam_task/views/jobs/components/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateJob extends StatefulWidget {
  const CreateJob({super.key});

  @override
  State<CreateJob> createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  double salary = 10;
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
                    'Publish a job',
                    style: heading2,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      children: [
                        Text(
                          "ESC",
                          style: normalText(fontSize: 10)
                              .copyWith(color: Colors.grey),
                        ),
                        Icon(
                          Icons.close,
                          color: Colors.grey,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              CustomTextField(hintText: 'Job Title', onChanged: (value) {}),
              CustomTextField(
                hintText: 'Job Description',
                onChanged: (value) {},
                maxLines: 3,
              ),
              Row(
                children: [
                  Text(
                    ' Add skills',
                    style: normalText(fontSize: 14),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add))
                ],
              ),
              Wrap(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Flutter',
                      style: normalText(fontSize: 10),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              CustomTextField(hintText: 'Job Location', onChanged: (value) {}),
              SizedBox(height: 10),
              Text(
                ' Salary',
                style: normalText(fontSize: 14),
              ),
              Slider(
                allowedInteraction: SliderInteraction.tapAndSlide,
                label: '${salary.round()}k',
                min: 10,
                max: 1000,
                value: salary,
                onChanged: (value) {
                  setState(() {
                    salary = value;
                  });
                },
              ),
              Text(
                '   ${salary.round()}k',
                style: normalText(fontSize: 14),
              ),
              SizedBox(
                height: 30,
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add additonal Questions',
                    style: normalText(fontSize: 14),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Post Job',
                        style: mediumText(fontSize: 14),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
