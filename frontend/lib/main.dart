import 'package:flutter/material.dart';
import 'package:re_learners/pages/home.dart';
import 'package:re_learners/pages/jobs.dart';
import 'package:re_learners/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ReLearners',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        homeRoute: (context) => const HomePage(),
        jobsRoute: (context) => const JobsPage(),
      }
    );
  }
}