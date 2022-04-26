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
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(
            children: [
              Card(
                color: Colors.deepPurple.withOpacity(.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 10, right: 10, top: 100, bottom: 100),
                  child: Text(
                    '${widget.hospital.description}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]))
      ],
    );
  }
}
