import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      //совершенно не нужный костыль, чтобы просто посмотреть на кота!
      const Duration(seconds: 6),() {
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/loading.jpg",
        fit: BoxFit.fitWidth,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
      ),
    );
  }
}
