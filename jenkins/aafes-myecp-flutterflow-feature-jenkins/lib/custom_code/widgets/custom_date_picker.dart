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

import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

import '../../flutter_flow/flutter_flow_icon_button.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({
    super.key,
    this.width,
    this.height,
    required this.result,
  });

  final double? width;
  final double? height;
  final Future Function(String data) result;

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  late DateTime _currentDate;
  late DateTime _targetDateTime;

  @override
  void initState() {
    _currentDate = DateTime.now();
    _targetDateTime = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 30,
      borderWidth: 0,
      buttonSize: 40,
      icon: Icon(
        key: ValueKey('recoverUserIDPageCalenderIconId_jnol'),
        Icons.calendar_today_outlined,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 24,
      ),
      onPressed: () async {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return StatefulBuilder(builder: (context, setState) {
              return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  surfaceTintColor: Colors.white,
                  backgroundColor: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 280,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 12,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _targetDateTime = DateTime(
                                        _targetDateTime.year,
                                        _targetDateTime.month - 1,
                                      );
                                    });
                                  },
                                ),
                                DropdownButton<int>(
                                  value: _targetDateTime.month,
                                  underline: Container(),
                                  focusColor: Colors.transparent,
                                  iconSize: 17,
                                  onChanged: (int? newValue) {
                                    setState(() {
                                      _targetDateTime = DateTime(
                                        _targetDateTime.year,
                                        newValue ?? 1,
                                      );
                                    });
                                  },
                                  items: List.generate(12, (index) {
                                    return DropdownMenuItem<int>(
                                      value: index + 1,
                                      child: Text(
                                          DateFormat.MMM().format(DateTime(
                                              _targetDateTime.year, index + 1)),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Arial',
                                                fontSize: 12,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                useGoogleFonts: false,
                                              )),
                                    );
                                  }),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _targetDateTime = DateTime(
                                        _targetDateTime.year,
                                        _targetDateTime.month + 1,
                                      );
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 12,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _targetDateTime = DateTime(
                                        _targetDateTime.year - 1,
                                        _targetDateTime.month,
                                      );
                                    });
                                  },
                                ),
                                DropdownButton<int>(
                                  value: _targetDateTime.year,
                                  underline: Container(),
                                  focusColor: Colors.transparent,
                                  iconSize: 17,
                                  onChanged: (int? newValue) {
                                    setState(() {
                                      _targetDateTime = DateTime(
                                        newValue ?? 2000,
                                        _targetDateTime.month,
                                      );
                                    });
                                  },
                                  items: List.generate(62, (index) {
                                    return DropdownMenuItem<int>(
                                      value: DateTime.now().year - 60 + index,
                                      child: Text(
                                          (DateTime.now().year - 60 + index)
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Arial',
                                                fontSize: 12,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                useGoogleFonts: false,
                                              )),
                                    );
                                  }),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                  onPressed: () {
                                    if (_targetDateTime.year <
                                        DateTime.now().year) {
                                      setState(() {
                                        _targetDateTime = DateTime(
                                          _targetDateTime.year + 1,
                                          _targetDateTime.month,
                                        );
                                      });
                                    }
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 250,
                        width: 260,
                        child: CalendarCarousel<Event>(
                          onDayPressed: (date, events) {
                            if (date.month == _targetDateTime.month) {
                              print(date);
                              setState(() => _currentDate = date);
                            }
                          },
                          daysHaveCircularBorder: true,
                          showOnlyCurrentMonthDate: false,
                          thisMonthDayBorderColor: Colors.transparent,
                          weekFormat: false,
                          height: 250.0,
                          selectedDateTime: _currentDate,
                          targetDateTime: _targetDateTime,
                          customGridViewPhysics:
                              const NeverScrollableScrollPhysics(),
                          selectedDayButtonColor: Colors.transparent,
                          selectedDayBorderColor: const Color(0xffb042757),
                          markedDateIconBorderColor: Colors.transparent,
                          showHeader: false,
                          todayButtonColor: Colors.transparent,
                          minSelectedDate: _currentDate
                              .subtract(const Duration(days: 100000)),
                          maxSelectedDate: _currentDate.add(Duration(
                              days: (DateTime.now()
                                  .difference(_currentDate)
                                  .inDays))),
                          prevDaysTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: Colors.grey,
                                    useGoogleFonts: false,
                                  ),
                          nextDaysTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: Colors.grey,
                                    useGoogleFonts: false,
                                  ),
                          daysTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Arial',
                                fontSize: 12,
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                          inactiveDaysTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Arial',
                                fontSize: 12,
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                          weekendTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Arial',
                                fontSize: 12,
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                          weekDayFormat: WeekdayFormat.narrow,
                          todayTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Arial',
                                fontSize: 12,
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                          markedDateCustomTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    useGoogleFonts: false,
                                  ),
                          selectedDayTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Arial',
                                fontSize: 12,
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                          inactiveWeekendTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Arial',
                                fontSize: 12,
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                          onCalendarChanged: (DateTime date) {
                            setState(() {
                              _targetDateTime = date;
                            });
                          },
                          onDayLongPressed: (DateTime date) {
                            print('long pressed date $date');
                          },
                          headerTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Arial',
                                // fontSize: 12,
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                          weekdayTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Arial',
                                // fontSize: 12,
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                          todayBorderColor: Colors.transparent,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 260,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cancel",
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xffb042757),
                                        useGoogleFonts: false,
                                      )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                widget.result(formatDate(_currentDate));
                                Navigator.pop(context);
                              },
                              child: Text("OK",
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Arial',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xffb042757),
                                        useGoogleFonts: false,
                                      )),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      )
                    ],
                  ));
            });
          },
        );
      },
    ));
  }
}

String formatDate(DateTime dateTime) {
  try {
    return '${dateTime.month.toString().padLeft(2, '0')}/${dateTime.day.toString().padLeft(2, '0')}/${dateTime.year.toString()}';
  } catch (e) {
    print('Error formatting date: $e');
    return '';
  }
}

DateTime parseDate(String dateString) {
  try {
    List<String> parts = dateString.split('/');
    if (parts.length != 3) {
      throw FormatException('Invalid date format');
    }
    int month = int.parse(parts[0]);
    int day = int.parse(parts[1]);
    int year = int.parse(parts[2]);
    return DateTime(year, month, day);
  } catch (e) {
    print('Error parsing date: $e');
    return DateTime.now(); // Return current date as fallback
  }
}
