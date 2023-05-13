import 'package:flutter/material.dart';

import '../components/bottom_sheet_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ///
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      showModal,
    );
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
              onPressed: showModal,
              icon: const Icon(Icons.ac_unit_rounded),
            ),
          ],
        ),
      ),
    );
  }

  ///
  void showModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => const BottomSheetComponent(),
    );
  }
}
