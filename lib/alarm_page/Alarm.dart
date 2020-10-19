import 'package:alarm/size_config.dart';
import 'package:flutter/material.dart';
import 'package:alarm/alarm_page/add_alarm.dart';

class Alarm extends StatefulWidget {
  @override
  _AlarmState createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text('Alarm',
              style: TextStyle(color: Colors.black, fontSize: 25.0)),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(20.0), child: Save()),
    );
  }
}

class Save extends StatefulWidget {
  @override
  _SaveState createState() => _SaveState();
}

class _SaveState extends State<Save> {
  bool _value = true;
  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  TimeOfDay _selectedTime;
  ValueChanged<TimeOfDay> selectTime;

  @override
  void initState() {
    _selectedTime = new TimeOfDay(hour: 12, minute: 30);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    int itemCount=1 ;
    return Padding(
        padding:  EdgeInsets.only(left: getProportionateScreenWidth(20)),
    child :AspectRatio(
    aspectRatio: 2.5,
    child: itemCount>0? ListView.builder(itemCount: itemCount,
    itemBuilder: (BuildContext context, int index) {
      return ListTile ( title :
       Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[100],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new GestureDetector(
                        child: Text(
                          _selectedTime.format(context),
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return AddAlarm();
                              },
                            ),
                          );
                        },
                      ),
                      Switch(
                        onChanged: (bool value) {
                          _onChanged(value);
                        },
                        value: _value,
                        activeColor: Colors.white,
                        inactiveThumbColor: Colors.grey,
                      ),
                    ]),

              ),
      );

        }
    )
        : Text('No'),
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
}
