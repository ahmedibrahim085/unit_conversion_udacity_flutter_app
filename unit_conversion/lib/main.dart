// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:unit_conversion/category.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

/// The function that is called when main.dart is run.
void main() {
  runApp(const UnitConversion());
}

/// This widget is the root of our application.
class UnitConversion extends StatelessWidget {
  const UnitConversion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Turns on a little "DEBUG" banner in debug mode to indicate that the app is in debug mode.
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        //The [100] is the selection of the color degree
        backgroundColor: Colors.green[100],
        body: const Center(
          child: Category(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,
          ),
        ),
      ),
    ); // Material App
  }
}
