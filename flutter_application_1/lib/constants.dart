import 'package:flutter/material.dart';

// 🔹 Warna dan ukuran layout
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

// 🔹 Jenis kelamin
enum Gender {
  male,
  female,
}

// 🔹 Style teks umum
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const numberTextStyle = TextStyle(
  fontSize: 45.0,
  fontWeight: FontWeight.w900,
);

const buttonTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

// 🔹 Style hasil kalkulasi
const resultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

const bmiTextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
);

// 🔹 (Opsional) style tambahan untuk subtitle hasil BMR
const infoTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.white70,
);
