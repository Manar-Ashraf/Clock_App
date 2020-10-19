import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:alarm/alarm_page/circle_day.dart';
import 'package:alarm/alarm_page/Alarm.dart';
import 'package:flutter/cupertino.dart';


class AddAlarm extends StatefulWidget {
  AddAlarm({Key key}) : super(key: key);

  _AddAlarmState createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {
  TimeOfDay _selectedTime;
  ValueChanged<TimeOfDay> selectTime;

  // get isAfter => null;
  @override
  void initState() {
    _selectedTime = new TimeOfDay(hour: 12, minute: 30);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.alarm_add,
                color: Colors.black,
              ),
              SizedBox(width: 25),
              Text('Set Alarm',
                  style: TextStyle(color: Colors.black, fontSize: 25.0))
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                ),
                new GestureDetector(
                  child: Text(
                    _selectedTime.format(context),
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    _selectTime(context);
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    circleDay('Mon', context, false),
                    circleDay('Tue', context, true),
                    circleDay('Wed', context, true),
                    circleDay('Thu', context, true),
                    circleDay('Fri', context, false),
                    circleDay('Sat', context, true),
                    circleDay('Sun', context, false),
                  ],
                ),
                SizedBox(
                  height: 60.0,
                ),
                SizedBox(
                  height: 2.0,
                  child: Container(
                    color: Colors.white30,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                  title: Text('Alarm Notification',
                      style: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 2.0,
                  child: Container(
                    color: Colors.white30,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.check_box,
                    color: Colors.white,
                  ),
                  title:
                  Text('Vibrate', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 2.0,
                  child: Container(
                    color: Colors.white30,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                FlatButton(
                    color: Theme
                        .of(context)
                        .accentColor,
                    child: Text('Save', style: TextStyle(color: Colors.white)),
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Save();
                          }));
                      var selectedTime = _selectedTime;
                      if (selectedTime != null) {
                        final now =
                        DateTime.now();
                        var selectedDateTime =
                        DateTime(selectedTime.hour, selectedTime.minute);
                        _selectedTime = selectedTime;
                        // setModalState(() {
                        //   _selectedTimeString =
                        //       selectedTime
                        //           .toString();
                        // });
                      }
                    }),
            /*FloatingActionButton.extended(
                    backgroundColor: Theme
                        .of(context)
                        .accentColor,
                     onPressed: () async {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) {
                    //       return Alarm();
                    //     }),
                    //   );
                      final startTime = DateTime(2020,10);
                      final endTime = DateTime(2020,12);
                      final current
                      if (selectTime.isAfter(DateTime.now())) {
                        _selectedTime;
                      } else {
                        _selectedTime.add (Duration(days: 1));
                      }
                    },
                      label: Text('Save', style: TextStyle(color: Colors.white)),
                  ),*/
            // onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) {
            //                 return Alarm();
            //               },
            //             )
            //         );
            //
     ]
          ),
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).pop(),
          backgroundColor: Colors.white,
          child: Icon(
            Icons.delete,
            size: 20.0,
            color: Theme
                .of(context)
                .accentColor,
          ),
        )
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked =
    await showTimePicker(context: context, initialTime: _selectedTime);
    setState(() {
      _selectedTime = picked;
    });
  }

// @override
// void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//   super.debugFillProperties(properties);
//   properties.add(DiagnosticsProperty('isAfter', isAfter));

// var now =new DateTime.now();
// var later=now.add(const Duration(seconds: 5));
// assert(later.isAfter(now));
// assert (!now.isBefore((now)));
// assert (later.isAfter(now.toUtc()));
// assert (later.toUtc().isAfter(now));
// assert (!now.toUtc().isBefore(now));
// assert (!now.isBefore(now.toUtc()));
}
