import 'package:flutter/material.dart';
import 'package:bmi/components/custom_card.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    required this.result,
    required this.bmi,
    required this.information,
    super.key,
  });

  final String result;
  final String bmi; // 🔹 tetap pakai nama 'bmi' untuk kompatibilitas
  final String information;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMR CALCULATOR'), // 🔹 Ubah judul
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 🔸 Judul hasil
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your BMR Result', // 🔹 Ubah judul teks
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // 🔸 Card hasil BMR
          Expanded(
            flex: 5,
            child: CustomCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result, // e.g. "Normal", "Low", "High"
                    style: resultTextStyle,
                  ),
                  Text(
                    '$bmi kcal/day', // 🔹 tampilkan satuan energi
                    style: bmiTextStyle,
                  ),
                  Text(
                    information,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 🔸 Tombol kembali
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
