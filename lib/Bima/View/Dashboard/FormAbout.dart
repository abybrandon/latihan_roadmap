// ignore_for_file: file_names, unused_import

import 'dart:ffi';

import 'package:belajar_github/Bima/Controller/ControllerAbout.dart';
import 'package:belajar_github/Bima/Style/TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormAbout extends StatefulWidget {
  const FormAbout({super.key});

  @override
  State<FormAbout> createState() => _FormAboutState();
}

class _FormAboutState extends State<FormAbout> {
  final controllerAbout = Get.find<ControllerAbout>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Display name:',
                  style: TextStyleModif.getStyle(
                      fontWeight: FontWeight.w400,
                      size: 13,
                      color: Colors.white.withOpacity(0.33)),
                ),
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFF1a252a)),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Color(0XFF3f494e), width: 1.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Enter name',
                      alignLabelWithHint: true,
                      contentPadding:
                          const EdgeInsets.only(top: 4, left: 10, right: 10),
                      hintStyle: TextStyleModif.getStyle(
                          fontWeight: FontWeight.w400,
                          size: 13,
                          color: Colors.white.withOpacity(0.33))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Gender:',
                  style: TextStyleModif.getStyle(
                      fontWeight: FontWeight.w400,
                      size: 13,
                      color: Colors.white.withOpacity(0.33)),
                ),
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFF1a252a)),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Color(0XFF3f494e), width: 1.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Select Gender',
                      alignLabelWithHint: true,
                      contentPadding:
                          const EdgeInsets.only(top: 4, left: 10, right: 10),
                      hintStyle: TextStyleModif.getStyle(
                          fontWeight: FontWeight.w400,
                          size: 13,
                          color: Colors.white.withOpacity(0.33))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Birthday:',
                  style: TextStyleModif.getStyle(
                      fontWeight: FontWeight.w400,
                      size: 13,
                      color: Colors.white.withOpacity(0.33)),
                ),
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFF1a252a)),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Color(0XFF3f494e), width: 1.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'DD MM YY',
                      alignLabelWithHint: true,
                      contentPadding:
                          const EdgeInsets.only(top: 4, left: 10, right: 10),
                      hintStyle: TextStyleModif.getStyle(
                          fontWeight: FontWeight.w400,
                          size: 13,
                          color: Colors.white.withOpacity(0.33))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Horoscope:',
                  style: TextStyleModif.getStyle(
                      fontWeight: FontWeight.w400,
                      size: 13,
                      color: Colors.white.withOpacity(0.33)),
                ),
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFF1a252a)),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Color(0XFF3f494e), width: 1.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: '--',
                      alignLabelWithHint: true,
                      contentPadding:
                          const EdgeInsets.only(top: 4, left: 10, right: 10),
                      hintStyle: TextStyleModif.getStyle(
                          fontWeight: FontWeight.w400,
                          size: 13,
                          color: Colors.white.withOpacity(0.33))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Zodiac:',
                  style: TextStyleModif.getStyle(
                      fontWeight: FontWeight.w400,
                      size: 13,
                      color: Colors.white.withOpacity(0.33)),
                ),
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFF1a252a)),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Color(0XFF3f494e), width: 1.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: '--',
                      alignLabelWithHint: true,
                      contentPadding:
                          const EdgeInsets.only(top: 4, left: 10, right: 10),
                      hintStyle: TextStyleModif.getStyle(
                          fontWeight: FontWeight.w400,
                          size: 13,
                          color: Colors.white.withOpacity(0.33))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Height:',
                  style: TextStyleModif.getStyle(
                      fontWeight: FontWeight.w400,
                      size: 13,
                      color: Colors.white.withOpacity(0.33)),
                ),
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFF1a252a)),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Color(0XFF3f494e), width: 1.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Add Height',
                      alignLabelWithHint: true,
                      contentPadding:
                          const EdgeInsets.only(top: 4, left: 10, right: 10),
                      hintStyle: TextStyleModif.getStyle(
                          fontWeight: FontWeight.w400,
                          size: 13,
                          color: Colors.white.withOpacity(0.33))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Weight:',
                  style: TextStyleModif.getStyle(
                      fontWeight: FontWeight.w400,
                      size: 13,
                      color: Colors.white.withOpacity(0.33)),
                ),
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFF1a252a)),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Color(0XFF3f494e), width: 1.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Add Weight',
                      alignLabelWithHint: true,
                      contentPadding:
                          const EdgeInsets.only(top: 4, left: 10, right: 10),
                      hintStyle: TextStyleModif.getStyle(
                          fontWeight: FontWeight.w400,
                          size: 13,
                          color: Colors.white.withOpacity(0.33))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
