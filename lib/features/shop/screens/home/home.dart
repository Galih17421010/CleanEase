import 'package:clean_ease/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:clean_ease/features/shop/screens/home/widget/home_appsbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  AppHomeAppsBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
