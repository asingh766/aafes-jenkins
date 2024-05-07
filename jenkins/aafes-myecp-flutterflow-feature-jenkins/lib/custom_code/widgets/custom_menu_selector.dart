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

import 'package:dropdown_button2/dropdown_button2.dart';

class CustomMenuSelector extends StatefulWidget {
  const CustomMenuSelector({
    super.key,
    this.width,
    this.height,
    required this.hintText,
    required this.isSelected,
    this.listData,
    this.onMenuStateCallBack,
    this.onChange,
  });

  final double? width;
  final double? height;
  final String hintText;
  final bool isSelected;
  final List<OptionStruct>? listData;
  final Future Function(bool? isOpen)? onMenuStateCallBack;
  final Future Function(String? text)? onChange;

  @override
  State<CustomMenuSelector> createState() => _CustomMenuSelectorState();
}

class _CustomMenuSelectorState extends State<CustomMenuSelector> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<OptionStruct?>(
          customButton: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: widget.isSelected
                              ? FlutterFlowTheme.of(context).primary
                              : Colors.transparent,
                          width: 2))),
              height: 30,
              alignment: Alignment.center,
              child: Text(
                widget.hintText,
                style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 14),
              )),
          onMenuStateChange: widget.onMenuStateCallBack,
          isDense: true,
          items: [
            ...(widget.listData ?? []).map(
              (item) => DropdownMenuItem<OptionStruct?>(
                value: item,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Row(
                    children: [
                      FFAppState().selectedSubHeaderItem == (item?.value ?? '')
                          ? const Icon(Icons.check,
                              size: 24, color: Colors.black)
                          : const SizedBox(width: 24),
                      const SizedBox(width: 5),
                      Expanded(
                          child: Text(
                        item.label,
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ],
          onChanged: (OptionStruct? optionStruct) {
            setState(() {
              FFAppState().selectedSubHeaderItem = optionStruct?.value ?? '';
              print(
                  "onChange====>label::${optionStruct?.label} value::${optionStruct?.value}");
              widget.onChange!(optionStruct?.value ?? "");
            });
          },
          dropdownStyleData: DropdownStyleData(
            width: 220,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            offset: Offset(0, -5),
          ),
          menuItemStyleData: MenuItemStyleData(
            height: 42,
            padding: EdgeInsets.zero,
            //    overlayColor:
            //     MaterialStateProperty.all(FlutterFlowTheme.of(context).primary),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          )),
    );
  }
}
