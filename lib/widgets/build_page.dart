import 'package:flutter/material.dart';
import 'package:isef_project/constants.dart';

Widget buildPage({
  required Color color,
  required String urlImage,
  required String title,
  required String subtitle,
}) =>
    Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            title,
            style: const TextStyle(
                color: kPrimryColor, fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Text(
              subtitle,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
          )
        ],
      ),
    );
