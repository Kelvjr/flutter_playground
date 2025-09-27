import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/list_views.dart';

class TrialScreen extends StatelessWidget {
  const TrialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListViews(),
          ListViews(),
          ListViews(),
          ListViews(),
          ListViews(),
        ],
      ),
    );
  }
}
