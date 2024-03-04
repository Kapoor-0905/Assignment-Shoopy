# Crezam Task

### Developed by: Ashutosh Kapoor

> Introduction

▸ The task was to develop a mobile app for job posting and job application.<br>
▸ I developed the app using Flutter and covered the following features:

1. The app is having 4 major screens: <b>Home, Jobs, Messages, Profile </b>
2. In the `home` screen user can see the jobs based on their recent searches, recent posted by the recuiters they follow, top recruiters, and the trending position in their search.
3. In the `jobs` screen user can see the top jobs meant for them, skill based jobs/internships, jobs saved for later and the applied jobs. Also in the screen, if anyone wishes to post a job then they can post a job too.
4. In the `Message` screen the user can share the jobs they are interested in with other users and the recrutiers can also get in touch with them.
5. In the `Profile` screen the user can add multiple information about them like education, experience, résume and can edit and change the settings for the app.

> Architecture used is MVC for the project. Use of unnecessary packages is avoided.


### Folder Tree
``` zsh
.
├── controllers
├── main.dart
├── models
├── utils
│   ├── colors.dart
│   ├── constants.dart
│   └── styles.dart
└── views
    ├── home
    │   ├── components
    │   │   ├── jobPostWidget.dart
    │   │   └── skillBasedJobWidget.dart
    │   └── home.dart
    ├── jobs
    │   ├── components
    │   │   ├── customTextField.dart
    │   │   └── jobCard.dart
    │   ├── createJob.dart
    │   └── jobs.dart
    ├── messaging
    │   ├── components
    │   │   └── messageListTile.dart
    │   └── messaging.dart
    ├── navPage.dart
    └── profile
        └── profile.dart
```