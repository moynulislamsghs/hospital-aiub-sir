import 'package:flutter/material.dart';
import 'package:hospital/my_db/db.dart';
import 'package:hospital/widgets/hospital_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double pageNumber = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              itemBuilder: ((context, index) =>
                  HospitalItem(hospitals[index], pageNumber, index.toDouble())),
              itemCount: hospitals.length,
            ),
          ],
        ),
      ),
    );
  }
}
