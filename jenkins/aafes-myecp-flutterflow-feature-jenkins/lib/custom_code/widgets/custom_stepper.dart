// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:easy_stepper/easy_stepper.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({
    Key? key,
    this.width,
    this.height,
    required this.activeStep,
    required this.dividerLineLength,
    required this.isMobile,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int activeStep;
  final double dividerLineLength;
  final bool isMobile;

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: EasyStepper(
          disableScroll: true,
          activeStep: widget.activeStep,
          lineStyle: LineStyle(
            lineLength: widget.dividerLineLength,
            lineSpace: 0,
            lineType: LineType.normal,
            defaultLineColor: Colors.black,
            finishedLineColor: Colors.black,
            lineThickness: 1,
          ),
          activeStepTextColor: Colors.black87,
          finishedStepTextColor: Colors.black87,
          internalPadding: 0,
          showLoadingAnimation: false,
          stepRadius: 14,
          showStepBorder: false,
          unreachedStepTextColor: Colors.black,
          steps: [
            EasyStep(
              customStep: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: widget.activeStep >= 0 ? Colors.black : Colors.white,
                    border: Border.all(
                      width: 1,
                      color:
                          widget.activeStep >= 0 ? Colors.white : Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(14))),
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.activeStep >= 0 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              title: widget.isMobile ? '' : 'Card Info',
            ),
            EasyStep(
              customStep: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: widget.activeStep >= 1 ? Colors.black : Colors.white,
                    border: Border.all(
                      width: 1,
                      color:
                          widget.activeStep >= 1 ? Colors.white : Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(14))),
                child: Text(
                  "2",
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.activeStep >= 1 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              title: widget.isMobile ? '' : 'Email Validation',
            ),
            EasyStep(
              customStep: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: widget.activeStep >= 2 ? Colors.black : Colors.white,
                    border: Border.all(
                      width: 1,
                      color:
                          widget.activeStep >= 2 ? Colors.white : Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(14))),
                child: Text(
                  "3",
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.activeStep >= 2 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              title: widget.isMobile ? '' : 'Security Questions',
            ),
            EasyStep(
              customStep: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: widget.activeStep >= 3 ? Colors.black : Colors.white,
                    border: Border.all(
                      width: 1,
                      color:
                          widget.activeStep >= 3 ? Colors.white : Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(14))),
                child: Text(
                  "4",
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.activeStep >= 3 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              title: widget.isMobile ? '' : 'Confirmation',
            ),
          ],
          onStepReached: (index) {}),
    );
  }
}
