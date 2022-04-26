import 'package:flutter/material.dart';
import 'package:hospital/models/hospital_model.dart';

class HospitalItem extends StatefulWidget {
  final Hospital hospital;
  final double pageNumber;
  final double index;

  HospitalItem(this.hospital, this.pageNumber, this.index);

  @override
  State<HospitalItem> createState() => _HospitalItemState();
}

class _HospitalItemState extends State<HospitalItem> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('${widget.hospital.name}'),
            background: Image.asset(
              '${widget.hospital.image}',
              height: 200,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
      ],
    );
  }
}
