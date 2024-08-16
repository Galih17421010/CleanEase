import 'package:flutter/material.dart';
import 'package:clean_ease/screens/home_screen.dart';
import 'package:clean_ease/screens/booking_screen.dart';
// Tambahkan lebih banyak screens di sini

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/booking': (context) => BookingScreen(),
  // Tambahkan lebih banyak routes di sini
};
