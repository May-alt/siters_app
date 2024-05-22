import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:siters_app/ui/pages/home/components/body_content.dart';
import 'package:siters_app/ui/pages/home/components/header_content.dart';

class HomeViews extends StatefulWidget {

  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeHederContent(),
            Expanded(
              child: FadeInUp(
                child: HomeBodyContent()
              ),
            ),

          ],
        ),
      ),
    );
  }
}
