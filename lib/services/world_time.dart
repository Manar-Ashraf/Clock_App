import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String time;// the time in that location
  String url;//location url for api endpoint
  String offset;
  List<String> strings;

  WorldTime({this.url});

  Future<void> getTime()async{
//make the request
    Response response=await get('http://worldtimeapi.org/api/timezone/$url');
    Map data=jsonDecode(response.body);

    String datetime =data['datetime'];
    offset=data['utc_offset'].substring(1,3);
print(offset);
    DateTime now=DateTime.parse(datetime);
    now =now.add(Duration(hours:int.parse(offset)));

    time=now.toString();
    strings=time.split(" ");
    time=strings[1];
    time=time.substring(0,5);
    //print(time);
  }
  }


