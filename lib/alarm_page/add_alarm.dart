import 'package:flutter/material.dart';
import 'package:alarm/alarm_page/circle_day.dart';

bool a=true,b=false,c=true,d=true,e=true,f=true,g=true;
bool tog(bool n){
  n?n=false:n=true;
  return n;
}
class AddAlarm extends StatefulWidget {
  AddAlarm({Key key}) : super(key: key);

  _AddAlarmState createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {


  TimeOfDay _selectedTime;
  ValueChanged<TimeOfDay> selectTime;



  @override
  void initState() {
     _selectedTime = new TimeOfDay(hour: 12, minute: 30);

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B2C57),
      appBar: AppBar(
        backgroundColor: Color(0xff1B2C57),
        title: Column(
          children: <Widget>[

            Icon(Icons.alarm_add, color: Color(0xff65D1BA),),
            Text('Add alarm', style: TextStyle(
              color: Color(0xff65D1BA),
              fontSize: 25.0
            ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 60.0,),
              new GestureDetector(
                child: Text(_selectedTime.format(context), style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                onTap: () {
                  _selectTime(context);
                },
              ),
              SizedBox(height: 30.0,),
              Expanded(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            a?a=false:a=true;
                          });
                        },
                        child: circleDay('Mon', context, a)),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            b?b=false:b=true;
                          });
                        },
                        child: circleDay('Tue', context, b)),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            c?c=false:c=true;
                          });
                        },
                        child: circleDay('Wed', context, c)),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            d?d=false:d=true;
                          });
                        },
                        child: circleDay('Thu', context, d)),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            e?e=false:e=true;
                          });
                        },
                        child: circleDay('Fri', context, e)),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            f?f=false:f=true;
                          });
                        },
                        child: circleDay('Sat', context, f)),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            g?g=false:g=true;
                          });
                        },
                        child: circleDay('Sun', context, g)),

                  ],
                ),
              ),
              SizedBox(height: 60.0,),
              SizedBox(height: 2.0, child: Container(color: Colors.white30,),),
              ListTile(
                leading: Icon(Icons.notifications_none, color: Colors.white,),
                title: Text('Alarm Notification', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 2.0, child: Container(color: Colors.white30,),),
              ListTile(
                leading: Icon(Icons.check_box, color: Colors.white,),
                title: Text('Vibrate', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 2.0, child: Container(color: Colors.white30,),),
              SizedBox(height: 60.0,),
              FlatButton(
                color: Theme.of(context).accentColor,
                child: Text('Save', style: TextStyle(color: Colors.white)),
                onPressed: () => Navigator.of(context).pop()
              )
            ],
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () =>  Navigator.of(context).pop(),
        backgroundColor: Colors.white,
        child: Icon(
          Icons.delete,
          size: 20.0,
          color:Theme.of(context).accentColor,
        ),
      )
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked =  await showTimePicker(
      context: context, 
      initialTime: _selectedTime
    );
    setState(() {
      _selectedTime = picked;
    });
  }
}