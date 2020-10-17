import 'dart:async';
import 'package:alarm/services/world_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../size_config.dart';

class CountryCard extends StatefulWidget {
  CountryCard({
    this.time,
    this.country,
    this.timeZone,
    this.iconSrc,
    this.url,//location url for api endpoint
  }
  );

  String country, timeZone,time, iconSrc,url;



  @override

  _CountryCardState createState() => _CountryCardState(timeZone: timeZone, time: time, country: country, iconSrc: iconSrc,url: url);
}


class _CountryCardState extends State<CountryCard> {
  _CountryCardState({
    @required this.country,
    @required this.timeZone,
    @required this.iconSrc,
    @required this.time,
    @required this.url,//location url for api endpoint
  });

  String country, timeZone, iconSrc, time,url;
  void setupWorldTime()async{
    WorldTime instance=WorldTime(url:url );
    await instance.getTime();
    setState(() {
      time=instance.time;
    });

  }
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        setupWorldTime();

      });
    });
  }

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(170),
        child: AspectRatio(
          aspectRatio: 1 ,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).primaryIconTheme.color,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: getProportionateScreenWidth(16)),
                ),
                SizedBox(height: 4),
                Text(timeZone),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: getProportionateScreenWidth(35),
                      color: Theme.of(context).accentIconTheme.color,
                    ),
                    Spacer(),
                    Text(
                        time,
                        style:/*TextStyle(fontSize: 10),*/Theme.of(context).textTheme.headline4,softWrap: true,
                      ),


                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );  }
}
