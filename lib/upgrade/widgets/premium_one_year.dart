import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_ute/upgrade/upgrade.dart';

class PremiumOneYear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bias = MediaQuery.of(context).size.width / 6;
    return BlocBuilder<UpgradeCubit, UpgradeState>(builder: (context, state) {
      return GestureDetector(
        child: Container(
          margin: EdgeInsets.only(left: bias, right: bias, top: 15.0),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: state.status == UpgradeStatus.pickedOneYear
                  ? Colors.green
                  : Colors.white,
              width: 2.0,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1 năm',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                '415.790 đồng',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          context.read<UpgradeCubit>().pickedOneYearPackage();
        },
      );
    });
  }
}
